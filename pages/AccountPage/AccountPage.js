let Observable = require("FuseJS/Observable");
let CameraRoll = require("FuseJS/CameraRoll");
let ImageTools = require("FuseJS/ImageTools");
let Storage = require("FuseJS/Storage");
let selectImage = Observable("");
let imageIsPicked = Observable(false)
let avatar = Observable('');
let username = Observable('');
let rate = Observable('');

let nameValue = Observable('');
let emailValue = Observable('');
let phoneValue = Observable('');
let imageValue = Observable('');
let tokenValue = Observable('');
let base64Value = Observable('');

Storage.read("username").then(function (content) {
    username.value = content
}, function (error) {
    console.log('token undefined')
});

Storage.read("avatar").then(function (content) {
    avatar.value = content
}, function (error) {
    console.log('token undefined')
});

Storage.read("rate").then(function (content) {
    rate.value = content
}, function (error) {
    console.log('token undefined')
});

goHome = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('home');
    }, 400)
}

goAccount = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('account');
    }, 400)
}

goBalance = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('balance');
    }, 400)
}

goInfo = () => {
    SideMenu.dismiss()
    setTimeout(() => {
        sideRouter.goto('info');
    }, 400)
}

pickPhoto = () => {
    CameraRoll.getImage()
        .then(function (image) {
            ImageTools.getBase64FromImage(image)
                .then(function (base64Image) {
                    imageIsPicked.value = true
                    selectImage.value = image.path
                    base64Value.value = base64Image
                });
        }, function (error) {

        });
}

Storage.read("token").then(function (token) {
    tokenValue.value = token
    var status = 0;
    var response_ok = false;
    fetch('http://jobber.creatif.team/api/v1/user/profile', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ access_token: token })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            if (responseObject.content.username != null) {
                nameValue.value = responseObject.content.username;
                emailValue.value = responseObject.content.email;
                phoneValue.value = responseObject.content.phone;
                imageValue.value = responseObject.content.image;
            }
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}, function (error) {
    console.log('token undefined')
});

updateData = () => {
    Storage.read("username").then(function (content) {
        username.value = content
    }, function (error) {
        console.log('token undefined')
    });

    Storage.read("avatar").then(function (content) {
        avatar.value = content
    }, function (error) {
        console.log('token undefined')
    });

    Storage.read("rate").then(function (content) {
        rate.value = content
    }, function (error) {
        console.log('token undefined')
    });
}

saveData = (image) => {
    if (nameValue.value != '' && emailValue.value != '' && selectImage.value != '') {
        var status = 0;
        var response_ok = false;
        fetch('http://jobber.creatif.team/api/v1/user/edit_profile', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({
                access_token: tokenValue.value,
                email: emailValue.value,
                username: nameValue.value,
                image: 'http://jobber.creatif.team/uploads/' + image,
                phone: phoneValue.value
            })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject.code == '200') {
                let username = Storage.writeSync("username", nameValue.value);
                let avatar = Storage.writeSync("avatar", 'http://jobber.creatif.team/uploads/' + image);
                if (username && avatar) {
                    console.log('Save complete')
                    updateData()
                }
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });

    } else {
        console.log('Заполните все данные')
    }
}

formEncode = (obj) => {
    var str = [];
    for (var p in obj)
        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
    return str.join("&");
}

uploadImage = () => {
    if (nameValue.value != '' && emailValue.value != '' && selectImage.value != '') {
        console.log(tokenValue.value)
        var status = 0;
        var response_ok = false;

        var requestObject = { file: 'data:image/jpeg;base64,' + base64Value.value, access_token: tokenValue.value };

        fetch('http://jobber.creatif.team/api/v1/fileupload/base64_upload', {
            method: 'POST',
            headers: { "Content-type": "application/x-www-form-urlencoded" },
            body: formEncode(requestObject)
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject.code == '200') {
                saveData(responseObject.content.file_name)
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    }
}

logout = () => {
    let avatar = Storage.deleteSync("avatar")
    let rate = Storage.deleteSync("rate")
    let username = Storage.deleteSync("username")
    let token = Storage.deleteSync("token")
    let favorite = Storage.deleteSync("favorite")
    if (avatar && rate && username && token && favorite){
        console.log("logout")
        router.goto("login")
    }else{
        console.log("logout error")
    }
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    selectImage: selectImage,
    imageIsPicked: imageIsPicked,
    pickPhoto: pickPhoto,
    username: username,
    avatar: avatar,
    rate: rate,
    nameValue: nameValue,
    emailValue: emailValue,
    phoneValue: phoneValue,
    imageValue: imageValue,
    uploadImage: uploadImage,
    logout: logout
}