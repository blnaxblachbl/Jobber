let Observable = require("FuseJS/Observable");

goBack = () => {
    sideRouter.goBack();
}

let title = this.Parameter.map(function (param) {
    return param.title
});

let image = this.Parameter.map(function (param) {
    return param.image
});

let price = this.Parameter.map(function (param) {
    return param.price
});

title.subscribe(module);

image.subscribe(module);

price.subscribe(module);

goAccount = () => {
    //favoriteRouter.push("otherAccount");
}

module.exports = {
    goBack: goBack,
    goAccount: goAccount,
    title: title,
    image: image,
    price: price
}