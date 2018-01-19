var Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");

var phoneNum = Observable('');

Storage.read("token").then(function (content) {
   // router.push("tabView");
}, function (error) {
});

goConfirm = () => {
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
        // Do something with the result
        if (responseObject) {
            router.goto("confirm", {phone: '235'});
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

module.exports = {
    goConfirm: goConfirm,
    phoneNum: phoneNum,
}