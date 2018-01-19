let Observable = require("FuseJS/Observable");
let subCategories = Observable();

subCategories = [
    { name: "Подкатегория 1", picked: false },
    { name: "Подкатегория 2", picked: false },
    { name: "Подкатегория 3", picked: false },
    { name: "Подкатегория 4" },
    { name: "Подкатегория 5", picked: false },
    { name: "Подкатегория 6", picked: false },
    { name: "Подкатегория 7", picked: false },
    { name: "Подкатегория 8", picked: false },
    { name: "Подкатегория 9", picked: false }
]


let name = this.Parameter.map(function(param) {
   return param.name
});

goFavorite = () => {
    adsRouter.push("favorite");
}

console.log(JSON.stringify(name))

module.exports = {
    subCategories: subCategories,
    goFavorite: goFavorite,
}