let cameraRoll = require("FuseJS/CameraRoll");
let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let selectImage = Observable("");
let imageIsPicked = Observable(false);
let username = Observable("");
let mail = Observable("");
let token = Observable("");
let ImageTools = require("FuseJS/ImageTools");
let images = Observable();
let buffer = Observable();

Storage.read("token").then(function (content) {
    token = content
}, function (error) {
    console.log('token undefined')
});

var phone = this.Parameter.map(function (params) {
    return params.phone;
})

phone.subscribe(module);

console.log(phone.value);

goHome = () => {
    if (selectImage.value != '' && username.value != '' && mail.value != '') {
        var status = 0;
        var response_ok = false;
        fetch('http://jobber.creatif.team/api/v1/user/edit_profile', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({
                access_token: token,
                email: mail.value,
                username: username.value,
                image: 'https://otvet.imgsmail.ru/download/88388439_ae15ebb787d081251a7ed75ebd0a1417_800.jpg',
                phone: phone.value
            })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject.code == '200') {
                router.goto("tabView");
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });

    } else {
        console.log('Заполните все данные')
    }
}

checkData = (token) => {
    var status = 0;
    var response_ok = false;
    fetch('http://jobber.creatif.team/api/v1/user/profile', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ access_token: token })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            let username = Storage.writeSync("username", responseObject.content.username);
            let avatar = Storage.writeSync("avatar", responseObject.content.image);
            let rate = Storage.writeSync("rate", responseObject.content.raiting);
            if (username && avatar && rate) {
                router.goto("tabView");
            }
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

/*


formEncode = (obj) => {
    var str = [];
    for (var p in obj)
        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
    return str.join("&");
}

uploadImage = () => {
    var status = 0;
    var response_ok = false;

    var requestObject = { file: buffer.value, access_token: 'l82PG6txBQ1vJofVO4gEhFMY5r9NRe' };

    fetch('http://jobber.creatif.team/api/v1/fileupload', {
        method: 'POST',
        headers: {
            "Content-type": "application/x-www-form-urlencoded"
        },
        body: formEncode(requestObject)
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}
*/

pickPhoto = () => {
    cameraRoll.getImage()
        .then(function (image) {
            imageIsPicked.value = true
            selectImage.value = image.path
            images.value = image
        }, function (error) {

        });
}

module.exports = {
    goHome: goHome,
    selectImage: selectImage,
    imageIsPicked: imageIsPicked,
    pickPhoto: pickPhoto,
    mail: mail,
    username: username
}