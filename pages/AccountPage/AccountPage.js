let cameraRoll = require("FuseJS/CameraRoll");
let Observable = require("FuseJS/Observable");

let selectImage = Observable("");
let imageIsPicked = Observable(false)

goHome = () => {
    sideRouter.goto('home');
}

goAccount = () => {
    sideRouter.goto('account');
}

goBalance = () => {
    sideRouter.goto('balance');
}

goInfo = () => {
    sideRouter.goto('info');
}

pickPhoto = () => {
    cameraRoll.getImage()
        .then(function (image) {
            imageIsPicked.value = true
            selectImage.value = image.path
        }, function (error) {

        });
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    selectImage: selectImage,
    imageIsPicked: imageIsPicked,
    pickPhoto: pickPhoto
}