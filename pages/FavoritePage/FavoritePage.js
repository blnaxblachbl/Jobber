let Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");
let favoritesAds = Observable();

getFavorites = () => {
    favoritesAds.clear();
    let data = JSON.parse(Storage.readSync("favorite"))
    if (data) {
        favoritesAds.replaceAll(data)
    }
}

goAdsInfo = (val) => {
    console.log(JSON.stringify(val.data))
    sideRouter.push("adsInfo", {id: val.data.id, phone: val.data.phone});
}

module.exports = {
    goAdsInfo: goAdsInfo,
    favoritesAds: favoritesAds,
    getFavorites: getFavorites
}