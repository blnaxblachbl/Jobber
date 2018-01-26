let Observable = require("FuseJS/Observable");
var Storage = require("FuseJS/Storage");
let favoritesAds = Observable();
let array = []

getFavorites = () => {
    Storage.read("favorite").then(function (data) {
        array = []
        JSON.parse(data).map((l,i)=>{
            array.push({
                title: l.title,
                img: l.img,
                price: l.price,
                id: l.id,
                phone: l.phone
            })
        })
        favoritesAds.replaceAll(array)
        console.log(array)
    }, function (error) {
        console.log('token undefined')
    });
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