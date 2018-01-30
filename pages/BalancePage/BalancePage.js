let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let avatar = Observable('');
let username = Observable('');
let rate = Observable('');
let token = Observable('');
let summ = Observable('');
let balance = Observable('');
let transactions = Observable()

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

    Storage.read("token").then(function (content) {
        token.value = content
        var status = 0;
        var response_ok = false;
        console.log(token.value)
        fetch('http://192.168.1.11/api/v1/user/profile', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({ access_token: content })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject.content.transactions))
            if (responseObject.code == "200") {
                balance.value = responseObject.content.balance;
                transactions.replaceAll(responseObject.content.transactions);
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
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

addBalance = () => {
    SideMenu.dismiss()
    console.log(true)
}

goWeb = () => {
    if (summ.value > 0) {
        var status = 0;
        var response_ok = false;
        fetch('http://192.168.1.11/api/v1/user/up_balance', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({ access_token: token.value, sum: summ.value })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            sideRouter.push("webview")
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    }
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
    goWeb: goWeb,
    loadingData: loadingData,
    summ: summ,
    balance: balance,
    transactions: transactions
}