var cameraRoll = require("FuseJS/CameraRoll");
var Observable = require("FuseJS/Observable")

var imagePick = Observable("")

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

huli = () => {
    cameraRoll.getImage()
        .then(function (image) {
            console.log(image.path)
            imagePick.value = image.path
        }, function (error) {
            // Will be called if the user aborted the selection or if an error occurred.
        });
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    huli: huli,
    imagePick: imagePick
}