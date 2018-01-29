let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let avatar = Observable('');
let username = Observable('');
let rate = Observable('');

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

addBalance = () => {
    SideMenu.dismiss()
    console.log(true)
}

goWeb = () => {
    sideRouter.push("webview")
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    addBalance: addBalance,
    username: username,
    avatar: avatar,
    rate: rate,
    goWeb: goWeb
}