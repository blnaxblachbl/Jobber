let Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");
let favoritesAds = Observable();

getFavorites = () => {
    favoritesAds.clear();
    let storage = Storage.readSync("favorite")
    if (storage) {
        let data = JSON.parse(Storage.readSync("favorite"))
        favoritesAds.replaceAll(data)
    }
}

goAdsInfo = (val) => {
    console.log(JSON.stringify(val.data))
    sideRouter.push("adsInfo", { id: val.data.id, phone: val.data.phone });
}

module.exports = {
    goAdsInfo: goAdsInfo,
    favoritesAds: favoritesAds,
    getFavorites: getFavorites
}