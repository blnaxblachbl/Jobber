let Observable = require("FuseJS/Observable");
let cameraRoll = require("FuseJS/CameraRoll");
let selectImage = Observable("");
let imageIsPicked = Observable(false)
let Storage = require("FuseJS/Storage");
let avatar = Observable('');
let username = Observable('');
let rate = Observable('');

let nameValue = Observable('');
let emailValue = Observable('');
let phoneValue = Observable('');
let imageValue = Observable('');

Storage.read("username").then(function (content) {
    username.value = content
}, function (error) {
    console.log('token undefined')
});

Storage.read("avatar").then(function (content) {
    avatar.value = content
}, function (error) {
    console.log('token undefined')
});

Storage.read("rate").then(function (content) {
    rate.value = content
}, function (error) {
    console.log('token undefined')
});

goHome = () => {
    sideRouter.goto('home');
}

goAccount = () => {
    sideRouter.goto('account');
}

goBalance = () => {
    sideRouter.goto('balance');
}

goInfo = () => {
    sideRouter.goto('info');
}

pickPhoto = () => {
    cameraRoll.getImage()
        .then(function (image) {
            imageIsPicked.value = true
            selectImage.value = image.path
        }, function (error) {

        });
}

Storage.read("token").then(function (token) {
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
            if (responseObject.content.username != null) {
                nameValue.value = responseObject.content.username;
                emailValue.value = responseObject.content.email;
                phoneValue.value = responseObject.content.phone;
                imageValue.value = responseObject.content.image;
            }
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}, function (error) {
    console.log('token undefined')
});

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    selectImage: selectImage,
    imageIsPicked: imageIsPicked,
    pickPhoto: pickPhoto,
    username: username,
    avatar: avatar,
    rate: rate,
    nameValue: nameValue,
    emailValue: emailValue,
    phoneValue: phoneValue,
    imageValue: imageValue
}