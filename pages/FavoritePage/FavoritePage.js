let Observable = require("FuseJS/Observable");


goAdsInfo = (val) => {
    console.log(JSON.stringify(val.data));
    favoriteRouter.push("adsInfo");
}

module.exports = {
    goAdsInfo: goAdsInfo,
}