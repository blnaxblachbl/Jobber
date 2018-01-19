var Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");

var smsCode = Observable('')

var params = this.Parameter.map(function(params){
	return params.phone;
})

console.log(params);

goTabView = () => {
    var status = 0;
    var response_ok = false;

    fetch('http://jobber.creatif.team/api/v1/auth/access_token', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ phone: "+79991740248", code: smsCode.value })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        if (responseObject) {
            if (responseObject.content.access_token) {
                console.log(responseObject.content.access_token)
                router.push("tabView");
                Storage.write("token", responseObject.content.access_token);
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