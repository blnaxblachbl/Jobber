let Observable = require("FuseJS/Observable");


goAdsInfo = (val) => {
    console.log(JSON.stringify(val.data));
    sideRouter.push("adsInfo");
}

module.exports = {
    goAdsInfo: goAdsInfo,
}