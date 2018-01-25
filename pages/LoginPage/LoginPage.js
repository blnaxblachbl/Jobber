var Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");

var phoneNum = Observable('');

Storage.read("token").then(function (content) {
    //router.goto("tabView");
}, function (error) {
    console.log('token undefined')
});

goConfirm = () => {
    if (phoneNum.value != '') {
        var status = 0;
        var response_ok = false;
        fetch('http://jobber.creatif.team/api/v1/auth/send_code', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({ phone: phoneNum.value })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject) {
                router.push("confirm", { phone: phoneNum.value });
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    } else {
        console.log('Введите номер телефона');
    }
}

module.exports = {
    goConfirm: goConfirm,
    phoneNum: phoneNum,
}