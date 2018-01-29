var cameraRoll = require("FuseJS/CameraRoll");
var Observable = require("FuseJS/Observable")
let Storage = require("FuseJS/Storage");
let avatar = Observable('');
let username = Observable('');
let rate = Observable('');

loadingData = () => {
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
}

goHome = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('home');
    }, 400)
}

goAccount = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('account');
    }, 400)
}

goBalance = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('balance');
    }, 400)
}

goInfo = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('info');
    }, 400)
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    username: username,
    avatar: avatar,
    rate: rate, 
    loadingData: loadingData
}