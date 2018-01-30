let Storage = require("FuseJS/Storage");
let Observable = require("FuseJS/Observable");
let avatar = Observable('');
let username = Observable('');
let rate = Observable('');

let server = require('serverPath');

isFavorite = () => {
    console.log(JSON.stringify("yes123"))
}

goHome = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('home');
    }, 500)
}

goAccount = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('account');
    }, 500)
}

goBalance = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('balance');
    }, 500)
}

goInfo = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('info');
    }, 500)
}

loadingData = () => {
    setTimeout(() => {
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
    }, 500)
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    username: username,
    avatar: avatar,
    rate: rate,
    isFavorite: isFavorite,
    loadingData: loadingData,
}