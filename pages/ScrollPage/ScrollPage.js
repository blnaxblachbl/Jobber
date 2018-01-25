let Observable = require("FuseJS/Observable");

let title = this.Parameter.map(function (param) {
    return param.name
});

title.subscribe(module);

goAdsInfo = (val) => {
    console.log(JSON.stringify(val.data));
    sideRouter.push("adsInfo");
}

goBack = () => {
    sideRouter.goBack();
}

module.exports = {
    goAdsInfo: goAdsInfo,
    title: title,
    goBack: goBack
}