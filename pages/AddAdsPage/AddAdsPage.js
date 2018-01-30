let Observable = require("FuseJS/Observable");
let cameraRoll = require("FuseJS/CameraRoll");
let ImageTools = require("FuseJS/ImageTools");
let Storage = require("FuseJS/Storage");
let images = Observable();
let category = Observable("10:00 - 11:00", "11:00 - 12:00", "12:00 - 13:00", "13:00 - 14:00", "14:00 - 15:00", "15:00 - 16:00", "16:00 - 17:00", "17:00 - 18:00", "18:00 - 19:00", "19:00 - 20:00");
let selectCategory = Observable("Выбрать категорию");
let selectSubCategory = Observable("Выбрать подкатегорию");
let imagesIsLoad = Observable(false)
let categoryOpened = Observable(false);
let subCategoryOpened = Observable(false);
let imageAddEnabled = Observable(true);
let selectImage = Observable("../../assets/camera.png");
let selectToDelete = Observable();
let token = Observable();
let categories = Observable();
let subCategories = Observable();
let adsName = Observable();
let adsDesc = Observable();
let adsPrice = Observable();
let adsAddress = Observable();
let base64Value = Observable();
let ready = Observable(false);
let phone = Observable();
let email = Observable();
let selectCategoryId = Observable();
let imageToSave = []
let categoriesHeight = Observable();
let subCategoriesHeight = Observable();

let toastVisible = Observable(false);
let toastText = Observable("");

Storage.read("phone").then(function (data) {
    phone.value = data
}, function (error) {
    console.log('token undefined')
});

Storage.read("email").then(function (data) {
    email.value = data
}, function (error) {
    console.log('token undefined')
});

getCategories = () => {
    let token = Storage.readSync("token");
    if (token) {
        fetch('http://192.168.1.11/api/v1/categories', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({ access_token: token })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject.content))
            if (responseObject.code == "200") {
                categories.replaceAll(responseObject.content)
                categoriesHeight.value = categories.length * 35
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
        });
    }
}

pickImage = (val) => {
    selectImage.value = val.data.path
    selectToDelete.value = val.data
}

pick = (val) => {
    selectCategory.value = val.data.title
    subCategories.replaceAll(val.data.children)
    subCategoriesHeight.value = val.data.children.length * 35
    categoryOpened.value = false
}

categorySwitch = () => {
    getCategories();
    categoryOpened.value = !categoryOpened.value;
}

subCategorySwitch = () => {
    subCategoryOpened.value = !subCategoryOpened.value;
}

subPick = (val) => {
    selectCategoryId.value = val.data.id
    selectSubCategory.value = val.data.title
    subCategoryOpened.value = false
}

deleteImage = (val) => {
    images.remove(selectToDelete.value);
    if (images.length == 0) {
        imagesIsLoad.value = false
    } else if (images.length < 4) {
        imageAddEnabled.value = true
        selectImage.value = val.data.images._values[0].path
        selectToDelete.value = val.data.images._values[0]
    }
}

addImage = () => {
    cameraRoll.getImage().then(function (image) {
        if (images.length == 0) {
            selectImage.value = image.path
        }
        imagesIsLoad.value = true
        ImageTools.getBase64FromImage(image).then(function (base64Image) {
            images.add({
                path: image.path,
                base: base64Image
            });
            if (images.length > 3) {
                imageAddEnabled.value = false
            }
            console.log(images.length)
        });
    }, function (error) {

    });
}

uploadImage = () => {
    let token = Storage.readSync("token");
    if (token && adsName.value != '' && adsPrice.value != '' && adsDesc.value != '' && adsAddress.value != '' && selectCategory.value != 'Выбрать категорию' && selectSubCategory.value != 'Выбрать подкатегорию') {
        toastText.value = "Подождите, идет загрузка"
        setToast();
        let status = 0;
        let response_ok = false;
        let i = 0
        for (i = 0; i < images.length; i++) {
            console.log("while")
            let requestObject = { file: 'data:image/jpeg;base64,' + images._values[i].base, access_token: token };
            fetch('http://192.168.1.11/api/v1/fileupload/base64_upload', {
                method: 'POST',
                headers: { "Content-type": "application/x-www-form-urlencoded" },
                body: formEncode(requestObject)
            }).then(function (response) {
                status = response.status;
                response_ok = response.ok;
                return response.json();
            }).then(function (responseObject) {
                console.log(JSON.stringify(responseObject))
                if (responseObject.code == '200') {
                    imageToSave.push({ file: responseObject.content.file_name })
                    if (imageToSave.length == images.length) {
                        createAds();
                    }
                } else {
                    imageToSave = []
                }
            }).catch(function (err) {
                imageToSave = []
            });
        }
    } else {
        //console.log("not empty")
        console.log('Заполните все данные')
        toastText.value = "Все поля должны быть заполнены"
        setToast()
    }
}

setToast = () => {
    toastVisible.value = true
    setTimeout(() => { toastVisible.value = false }, 1500)
}

createAds = () => {
    let token = Storage.readSync("token");
    if (token) {
        console.log("creating")
        fetch('http://192.168.1.11/api/v1/ads/insert', {
            method: 'POST',
            headers: { "Content-type": "application/json" },
            body: JSON.stringify({
                access_token: token,
                title: adsName.value,
                desc: adsDesc.value,
                price: adsPrice.value,
                phone_number: phone.value,
                datetime: new Date(),
                category_id: selectCategoryId.value.toString(),
                address: adsAddress.value,
                images: imageToSave,
                email: email.value
            })
        }).then(function (response) {
            status = response.status;  // Get the HTTP status code
            response_ok = response.ok; // Is response.status in the 200-range?
            return response.json();    // This returns a promise
        }).then(function (responseObject) {
            console.log(JSON.stringify(responseObject))
            if (responseObject.code == '200') {
                imageToSave = []
                adsName.value = ""
                adsDesc.value = ""
                adsPrice.value = ""
                selectCategoryId.value = 0
                adsAddress.value = ""
                selectCategory.value = "Выбрать категорию",
                selectSubCategory.value = "Выбрать подкатегорию"
                images.replaceAll(imageToSave)
                selectImage.value = ""
                imagesIsLoad.value = false
                toastText.value = "Обьявление добавлено"
                setToast()
            }
        }).catch(function (err) {
            // An error occurred somewhere in the Promise chain
            console.log("error")
        });
    }
}

formEncode = (obj) => {
    let str = [];
    for (let p in obj)
        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
    return str.join("&");
}

module.exports = {
    pick: pick,
    subPick: subPick,
    pickImage: pickImage,
    images: images,
    imagesIsLoad: imagesIsLoad,
    addImage: addImage,
    categories: categories,
    deleteImage: deleteImage,
    selectCategory: selectCategory,
    selectImage: selectImage,
    categoryOpened: categoryOpened,
    categorySwitch: categorySwitch,
    imageAddEnabled: imageAddEnabled,
    subCategories: subCategories,
    subCategoryOpened: subCategoryOpened,
    selectSubCategory: selectSubCategory,
    subCategorySwitch: subCategorySwitch,
    getCategories: getCategories,
    adsAddress: adsAddress,
    adsDesc: adsDesc,
    adsName: adsName,
    adsPrice: adsPrice,
    uploadImage: uploadImage,
    categoriesHeight: categoriesHeight,
    subCategoriesHeight: subCategoriesHeight,
    toastText: toastText,
    toastVisible: toastVisible
}