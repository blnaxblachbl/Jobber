var Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");

var smsCode = Observable('')

var params = this.Parameter.map(function (params) {
    return params.phone;
})

params.subscribe(module);

console.log(params.value);

goTabView = () => {
    if (smsCode.value != '') {
        var status = 0;
        var response_ok = false;

        fetch('http://jobber.creatif.team/api/v1/auth/access_token', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({ phone: params.value, code: smsCode.value })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            if (responseObject) {
                if (responseObject.content.access_token) {
                    console.log(responseObject.content.access_token)
                    let token = Storage.writeSync("token", responseObject.content.access_token);
                    if (token) {
                        console.log("Successfully wrote to file");
                        this.checkData(responseObject.content.access_token)
                    }
                    else {
                        console.log("An error occured!");
                    }
                }
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    } else {
        console.log('Введите смс код');
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
            if (responseObject.content.username == null) {
                router.push('reg', { phone: params.value })
            } else {
                let username = Storage.writeSync("username", responseObject.content.username);
                let avatar = Storage.writeSync("avatar", responseObject.content.image);
                let rate = Storage.writeSync("rate", responseObject.content.raiting);
                if (username && avatar && rate) {
                    router.goto("tabView");
                }
                else {
                    console.log("An error occured!");
                }
            }
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

module.exports = {
    goTabView: goTabView,
    smsCode: smsCode
}