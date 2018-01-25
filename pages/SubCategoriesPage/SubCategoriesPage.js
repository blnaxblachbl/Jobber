let Observable = require("FuseJS/Observable");
let subCategories = Observable();


this.Parameter.onValueChanged(function(newParam){
    subCategories.clear()
    subCategories.addAll(newParam.subcategories)
});

let name = this.Parameter.map(function (param) {
    return param.title
});

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
    name: name
}