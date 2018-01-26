let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let id = Observable();
let ads = Observable();
let title = Observable();

this.Parameter.onValueChanged(function(newParam){
    id.clear()
    id.value = newParam.id
});

Storage.read("token").then(function (token) {
    var status = 0;
    var response_ok = false;
    let array = []
    fetch('http://jobber.creatif.team/api/v1/ads', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ 
            access_token: token,
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
            responseObject.content.map((l,i)=>{
                array.push({
                    price: l.price,
                    images: l.images[0].file,
                    title: l.title,
                    id: l.id
                })
            })
            ads.addAll(array)
            array = []
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}, function (error) {
    console.log('token undefined')
});

goAdsInfo = (val) => {
    console.log(JSON.stringify(val.data));
    sideRouter.push("adsInfo", {id: val.data.id});
}

goBack = () => {
    sideRouter.goBack();
}

module.exports = {
    goAdsInfo: goAdsInfo,
    goBack: goBack,
    ads: ads,
    title: title
}