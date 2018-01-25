let Observable = require("FuseJS/Observable");
let favoritesAds = Observable();

favoritesAds = [
    { title: "Обьявление 1", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 2", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 3", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 4", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 5", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 6", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 7", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 8", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' },
    { title: "Обьявление 9", img: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", price: '1000' }
]


goAdsInfo = (val) => {
    sideRouter.push("adsInfo", { title: val.data.title, image: val.data.img, price: val.data.price });
}

module.exports = {
    goAdsInfo: goAdsInfo,
    favoritesAds: favoritesAds,
}