let CameraRoll = require("FuseJS/CameraRoll");
let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let ImageTools = require("FuseJS/ImageTools");
let selectImage = Observable("");
let imageIsPicked = Observable(false);
let username = Observable("");
let mail = Observable("");
let token = Observable("");
let images = Observable();
let buffer = Observable();
let base64Value = Observable('');

Storage.read("token").then(function (content) {
    token.value = content
}, function (error) {
    console.log('token undefined')
});

var phone = this.Parameter.map(function (params) {
    return params.phone;
})

phone.subscribe(module);

console.log(phone.value);

saveData = (image) => {
    if (selectImage.value != '' && username.value != '' && mail.value != '') {
        var status = 0;
        var response_ok = false;
        fetch('http://jobber.creatif.team/api/v1/user/edit_profile', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({
                access_token: token.value,
                email: mail.value,
                username: username.value,
                image: 'http://jobber.creatif.team/uploads/' + image,
                phone: phone.value
            })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject.code == '200') {
                checkData()
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });

    } else {
        console.log('Заполните все данные')
    }
}

checkData = () => {
    var status = 0;
    var response_ok = false;
    fetch('http://jobber.creatif.team/api/v1/user/profile', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ access_token: token.value })
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

formEncode = (obj) => {
    var str = [];
    for (var p in obj)
        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
    return str.join("&");
}

uploadImage = () => {
    if (selectImage.value != '' && username.value != '' && mail.value != '') {
        console.log(token.value)
        var status = 0;
        var response_ok = false;

        var requestObject = { file: 'data:image/jpeg;base64,' + base64Value.value, access_token: token.value };

        fetch('http://jobber.creatif.team/api/v1/fileupload/base64_upload', {
            method: 'POST',
            headers: { "Content-type": "application/x-www-form-urlencoded" },
            body: formEncode(requestObject)
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject.code == '200') {
                saveData(responseObject.content.file_name)
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    }
}

pickPhoto = () => {
    CameraRoll.getImage()
        .then(function (image) {
            ImageTools.getBase64FromImage(image)
                .then(function (base64Image) {
                    imageIsPicked.value = true
                    selectImage.value = image.path
                    base64Value.value = base64Image
                });
        }, function (error) {

        });
}

module.exports = {
    uploadImage: uploadImage,
    selectImage: selectImage,
    imageIsPicked: imageIsPicked,
    pickPhoto: pickPhoto,
    mail: mail,
    username: username
}