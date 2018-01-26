let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let categories = Observable();

Storage.read("token").then(function (token) {
    var status = 0;
    var response_ok = false;
    fetch('http://jobber.creatif.team/api/v1/categories', {
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
            categories.addAll(responseObject.content)
            console.log(JSON.stringify(ads))
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}, function (error) {
    console.log('token undefined')
});

goSubCategories = (val) => {
    sideRouter.push("sub", { subcategories: val.data.children, title: val.data.title})
}

module.exports = {
    categories: categories,
    goSubCategories: goSubCategories,
}