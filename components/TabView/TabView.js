goAds = () =>{
    router.goto("ads");
    console.log("ads");
}

goAddAds = () =>{
    router.goto("addAds");
    console.log("addAds");
}

goFavorite = () =>{
    router.goto("favorite");
    console.log("favorite");
}

module.exports={
    goAds: goAds,
    goAddAds: goAddAds,
    goFavorite: goFavorite
}