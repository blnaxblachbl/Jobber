let Observable = require("FuseJS/Observable");
let subCategories = Observable();

subCategories = [
    { name: "Подкатегория 1", picked: false },
    { name: "Подкатегория 2", picked: false },
    { name: "Подкатегория 3", picked: false },
    { name: "Подкатегория 4", picked: false },
    { name: "Подкатегория 5", picked: false },
    { name: "Подкатегория 6", picked: false },
    { name: "Подкатегория 7", picked: false },
    { name: "Подкатегория 8", picked: false },
    { name: "Подкатегория 9", picked: false }
]


let title = this.Parameter.map(function (param) {
    return param.name
});

title.subscribe(module);

goFavorite = (val) => {
    sideRouter.push("scroll", { name: val.data.name });
}

goBack = () => {
    sideRouter.goBack();
}

module.exports = {
    subCategories: subCategories,
    goFavorite: goFavorite,
    goBack: goBack,
    title: title
}