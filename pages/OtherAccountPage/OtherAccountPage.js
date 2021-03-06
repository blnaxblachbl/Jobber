let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let phoneCall = require("FuseJS/Phone");
let phone = Observable();
let name = Observable();
let raiting = Observable();
let raitingIndex = Observable();
let image = Observable();
let id = Observable();
let token = Observable();
let userId = Observable();

let server = require('serverPath');


Storage.read("token").then(function (data) {
    token.value = data
}, function (error) {
    console.log('token undefined')
});

this.Parameter.onValueChanged(function (newParam) {
    let array = []
    phone.value = newParam.phone
    name.value = newParam.userData.username
    raitingIndex.value = newParam.raiting
    id.value = newParam.id
    userId.value = newParam.userId
    for (let i = 0; i < 5; i++) {
        if (i < newParam.userData.raiting) {
            array.push({
                value: true,
                i: i
            })
        } else {
            array.push({
                value: false,
                i: i
            })
        }
    }
    raiting.replaceAll(array)
    image.value = server.ip + '/uploads/' + newParam.userData.image
})

insertRaiting = (val) => {
    let array = []
    for (let j = 0; j < 5; j++) {
        if (j <= val.data.i) {
            array.push({
                value: true,
                i: j
            })
        } else {
            array.push({
                value: false,
                i: j
            })
        }
    }
    fetch(server.ip + '/api/v1/raiting/insert', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({
            access_token: token.value,
            review: "",
            raiting: val.data.i + 1,
            for_user_id: userId.value
        })
    }).then(function (response) {
        userStatus = response.status;  // Get the HTTP status code
        userResponse_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {       
            raiting.replaceAll(array)
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

goBack = () => {
    sideRouter.goBack();
}

callIt = () => {
    fetch(server.ip + '/api/v1/ads/show_number/' + id.value, {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ access_token: token.value })
    }).then(function (response) {
        userStatus = response.status;  // Get the HTTP status code
        userResponse_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            phoneCall.call(phone.value)
        } else {
            console.log("error")
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

module.exports = {
    goBack: goBack,
    phone: phone,
    raiting: raiting,
    image: image,
    name: name,
    insertRaiting: insertRaiting,
    callIt: callIt
}