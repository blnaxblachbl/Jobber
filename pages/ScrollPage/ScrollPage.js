let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let id = Observable();
let ads = Observable();
let title = Observable();
let token = Observable();
let server = require('serverPath');

getAds = () => {
    title.value = "Загрузка..."
    fetch(server.ip + '/api/v1/ads', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({
            access_token: token.value,
            limit: 100,
            page: 0,
            category_id: id.value
        })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        if (responseObject.code == "200") {
            title.value = responseObject.msg
            responseObject.content.map((l, i) => {
                array.push({
                    price: l.price,
                    images: "http://192.168.1.11/uploads/" + l.images[0].file,
                    title: l.title,
                    id: l.id,
                    phone: l.phone_number
                })
            })
            ads.replaceAll(array)
            array = []
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
        console.log("error-" + JSON.stringify(err))
    });
}

this.Parameter.onValueChanged(function (newParam) {
    id.clear()
    id.value = newParam.id
});

Storage.read("token").then(function (data) {
    token.value = data
}, function (error) {
    console.log('token undefined')
});

goAdsInfo = (val) => {
    sideRouter.push("adsInfo", { id: val.data.id, phone: val.data.phone });
}

adsClear = () => {
    ads.clear();
}

goBack = () => {
    sideRouter.goBack();
}

requestData = () => {
    title.value = "Загрузка..."
    var status = 0;
    var response_ok = false;
    let array = []
    fetch(server.ip + '/api/v1/ads', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({
            access_token: token.value,
            limit: 100,
            page: 0,
            category_id: id.value
        })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            title.value = responseObject.msg
            responseObject.content.map((l, i) => {
                array.push({
                    price: l.price,
                    images: "http://192.168.1.11/uploads/" + l.images[0].file,
                    title: l.title,
                    id: l.id,
                    phone: l.phone_number
                })
            })
            ads.replaceAll(array)
            array = []
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

module.exports = {
    goAdsInfo: goAdsInfo,
    goBack: goBack,
    ads: ads,
    title: title,
    getAds: getAds,
    requestData: requestData,
    adsClear: adsClear
}