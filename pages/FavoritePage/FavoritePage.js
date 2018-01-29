let Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");
let favoritesAds = Observable();
let array = []

getFavorites = () => {
    var data = Storage.readSync("favorite")
    array = []
    let db = JSON.parse(data);
    if (db) {
        db.map((l, i) => {
            array.push({
                title: l.title,
                img: l.img,
                price: l.price,
                id: l.id,
                phone: l.phone
            })
        })
        favoritesAds.replaceAll(array)
    } else {
        favoritesAds.clear();
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