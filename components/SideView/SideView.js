let Storage = require("FuseJS/Storage");
let Observable = require("FuseJS/Observable");
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

isFavorite = (val) => {
    console.log(JSON.stringify(val.data))
}

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

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    username: username,
    avatar: avatar,
    rate: rate,
    isFavorite: isFavorite
}