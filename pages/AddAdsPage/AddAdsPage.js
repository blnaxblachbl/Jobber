let Observable = require("FuseJS/Observable");
let cameraRoll = require("FuseJS/CameraRoll");
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

categories = [
    { name: "Вакансии", picked: false },
    { name: "Юридические услуги", picked: false },
    { name: "Няни и сиделки", picked: false },
    { name: "Ремонт" },
    { name: "Строительство и ремонт", picked: false },
    { name: "Праздники и мероприятия", picked: false },
    { name: "Красота и здоровье", picked: false },
    { name: "Обучение по интересам", picked: false },
    { name: "Грузчики", picked: false }
]

subCategories = [
    { name: "Вакансии", picked: false },
    { name: "Юридические услуги", picked: false },
    { name: "Няни и сиделки", picked: false },
    { name: "Ремонт" },
    { name: "Строительство и ремонт", picked: false },
    { name: "Праздники и мероприятия", picked: false },
    { name: "Красота и здоровье", picked: false },
    { name: "Обучение по интересам", picked: false },
    { name: "Грузчики", picked: false }
]

pickImage = (val) => {
    selectImage.value = val.data.path
    selectToDelete.value = val.data
    console.log(JSON.stringify(selectToDelete))
}

pick = (val) => {
    selectCategory.value = val.data.name
    categoryOpened.value = false
}

categorySwitch = () => {
    categoryOpened.value = !categoryOpened.value;
}

subCategorySwitch = () => {
    subCategoryOpened.value = !subCategoryOpened.value;
}

subPick = (val) => {
    selectSubCategory.value = val.data.name
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
    cameraRoll.getImage()
        .then(function (image) {
            if (images.length == 0) {
                selectImage.value = image.path
                imagesIsLoad.value = true
                images.add({ path: image.path });
            } else {
                images.add({ path: image.path });
                imagesIsLoad.value = true
                if (images.length > 3) {
                    imageAddEnabled.value = false
                }
            }
        }, function (error) {

        });
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
}