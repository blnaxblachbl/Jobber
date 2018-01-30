let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let categories = Observable();

getCategories = () => {
    var token = Storage.readSync("token");
    if (token) {
        var status = 0;
        var response_ok = false;
        fetch('http://192.168.1.11/api/v1/categories', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({ access_token: token })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            if (responseObject.code == "200") {
                categories.replaceAll(responseObject.content)
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    }
}

goSubCategories = (val) => {
    sideRouter.push("sub", { subcategories: val.data.children, title: val.data.title })
}

module.exports = {
    categories: categories,
    goSubCategories: goSubCategories,
    getCategories: getCategories
}