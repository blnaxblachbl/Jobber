let Observable = require("FuseJS/Observable");
let Storage = require("FuseJS/Storage");
let phoneCall = require("FuseJS/Phone");
let id = Observable();
let images = Observable();
let title = Observable();
let price = Observable();
let desc = Observable();
let address = Observable();
let parentCategory = Observable();
let subCategory = Observable();
let userId = Observable();
let userImage = Observable();
let userName = Observable();
let userRaiting1 = Observable();
let userRaiting2 = Observable();
let token = Observable();
let userData = Observable();
let phone = Observable();
let favorite = []
let isFavorite = Observable(false);
let myads = Observable(false);
let myId = Observable();

this.Parameter.onValueChanged(function (newParam) {
    id.value = null
    id.value = newParam.id
    phone.value = newParam.phone
    let status = 0;
    let response_ok = false;
    let userStatus = 0;
    let userResponse_ok = false;
    fetch('http://192.168.1.11/api/v1/ads/' + id.value, {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ access_token: token.value })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            title.value = responseObject.content.title
            price.value = responseObject.content.price
            desc.value = responseObject.content.desc
            address.value = responseObject.content.address
            parentCategory.value = responseObject.content.parent_category.title
            subCategory.value = responseObject.content.sub_category.title
            let arrayImages = [];
            responseObject.content.images.map((object) => {
                arrayImages.push({
                    id: object.id,
                    file: 'http://192.168.1.11/uploads/' + object.file
                })
            })
            images.replaceAll(arrayImages)
            userId.value = responseObject.content.user_id
            if (userId.value == myId.value) {
                myads.value = true
            } else {
                myads.value = false
            }
            fetch('http://192.168.1.11/api/v1/user/' + userId.value, {
                method: 'POST',
                headers: { "Content-type": "application/json" },
                body: JSON.stringify({ access_token: token.value })
            }).then(function (response) {
                userStatus = response.status;  // Get the HTTP status code
                userResponse_ok = response.ok; // Is response.status in the 200-range?
                return response.json();    // This returns a promise
            }).then(function (responseObject) {
                console.log(JSON.stringify(responseObject))
                if (responseObject.code == "200") {
                    userImage.value = responseObject.content.image
                    userName.value = responseObject.content.username
                    userRaiting1.value = responseObject.content.raiting
                    userRaiting2.value = 5 - userRaiting1.value
                    userData.value = responseObject.content
                }
            }).catch(function (err) {
                // An error occurred somewhere in the Promise chain
            });
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
});

Storage.read("userid").then(function (data) {
    myId.value = data
}, function (error) {
    console.log("get id error")
})

Storage.read("favorite").then(function (data) {
    JSON.parse(data).map((l, i) => {
        favorite.push({
            title: l.title,
            img: l.img,
            price: l.price,
            id: l.id,
            phone: l.phone
        })
    })
}, function (error) {
    console.log('token undefined')
});

Storage.read("token").then(function (data) {
    token.value = data
}, function (error) {
    console.log('token undefined')
});

goBack = () => {
    sideRouter.goBack();
}

isFavoriteAds = () => {
    isFavorite.value = false
    favorite.map((l, i) => {
        if (l.id == id.value) {
            isFavorite.value = true
            console.log("no")
        }
    })
}

addToFavorite = () => {
    favorite.unshift({
        title: title.value,
        img: images.value.file,
        price: price.value,
        id: id.value,
        phone: phone.value
    })
    let done = Storage.writeSync("favorite", JSON.stringify(favorite));
    if (done) {
        isFavorite.value = true
        console.log("yes")
    } else {
        console.log("no")
    }
}

removeFromFavorite = () => {
    let i = favorite.indexOf({
        title: title.value,
        img: images.value.file,
        price: price.value,
        id: id.value,
        phone: phone.value
    })
    favorite.splice(i, 1);
    let done = Storage.writeSync("favorite", JSON.stringify(favorite));
    if (done) {
        isFavorite.value = false
        console.log("yes")
    } else {
        console.log("no")
    }
}

goAccount = () => {
    console.log(JSON.stringify(userData.value))
    sideRouter.push("other", { userData: userData.value, phone: phone.value, userId: userId.value });
}

removeAds = () => {
    fetch('http://192.168.1.11/api/v1/ads/delete', {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({
            access_token: token.value,
            ads: id.value
        })
    }).then(function (response) {
        status = response.status;  // Get the HTTP status code
        response_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            console.log("deleted")
            goBack()
        }
    }).catch(function (err) {
        console.log("error")
    });
}

callIt = () => {
    fetch('http://192.168.1.11/api/v1/ads/show_number/' + id.value, {
        method: 'POST',
        headers: { "Content-type": "application/json" },
        body: JSON.stringify({ access_token: token.value })
    }).then(function (response) {
        userStatus = response.status;  // Get the HTTP status code
        userResponse_ok = response.ok; // Is response.status in the 200-range?
        return response.json();    // This returns a promise
    }).then(function (responseObject) {
        console.log(JSON.stringify(responseObject))
        if (responseObject.code == "200") {
            phoneCall.call(phone.value)
        } else {
            console.log("error")
        }
    }).catch(function (err) {
        // An error occurred somewhere in the Promise chain
    });
}

module.exports = {
    goBack: goBack,
    goAccount: goAccount,
    title: title,
    address: address,
    parentCategory: parentCategory,
    subCategory: subCategory,
    images: images,
    desc: desc,
    price: price,
    userImage: userImage,
    userName: userName,
    userRaiting1: userRaiting1,
    userRaiting2: userRaiting2,
    addToFavorite: addToFavorite,
    removeFromFavorite: removeFromFavorite,
    isFavorite: isFavorite,
    myads: myads,
    removeAds: removeAds,
    isFavoriteAds: isFavoriteAds,
    callIt: callIt
}