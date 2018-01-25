var Storage = require("FuseJS/Storage");

Storage.read("token").then(function (token) {
   
}, function (error) {
    console.log('token undefined')
});
