let Observable = require("FuseJS/Observable");
let cameraRoll = require("FuseJS/CameraRoll");
let images = Observable([]);
let category = Observable("10:00 - 11:00", "11:00 - 12:00", "12:00 - 13:00", "13:00 - 14:00", "14:00 - 15:00", "15:00 - 16:00", "16:00 - 17:00", "17:00 - 18:00", "18:00 - 19:00", "19:00 - 20:00");
let selectCategory = Observable("Выбрать категорию");
let selectSubCategory = Observable("Выбрать подкатегорию");
let data=[];
let categoryOpened = Observable(false);
let subCategoryOpened = Observable(false);
let selectImage = Observable("../../assets/camera.png");

data = [
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
    {url: "https://a.d-cd.net/dedee9as-960.jpg", picked: false},
    {url: "https://cs8.pikabu.ru/post_img/big/2016/05/05/10/1462467527112280134.jpg", picked: false},
]

categories = [
    {name: "Вакансии", picked: false},
    {name: "Юридические услуги", picked: false},
    {name: "Няни и сиделки", picked: false},
    {name: "Ремонт"},
    {name: "Строительство и ремонт", picked: false},
    {name: "Праздники и мероприятия", picked: false},
    {name: "Красота и здоровье", picked: false},
    {name: "Обучение по интересам", picked: false},
    {name: "Грузчики", picked: false}
]

subCategories = [
    {name: "Вакансии", picked: false},
    {name: "Юридические услуги", picked: false},
    {name: "Няни и сиделки", picked: false},
    {name: "Ремонт"},
    {name: "Строительство и ремонт", picked: false},
    {name: "Праздники и мероприятия", picked: false},
    {name: "Красота и здоровье", picked: false},
    {name: "Обучение по интересам", picked: false},
    {name: "Грузчики", picked: false}
]

pickImage = (val) => {
    selectImage.value = val.data.url
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

addImage = () => {
    cameraRoll.getImage()
        .then(function (image) {
            images.push({path: image.path});
        }, function (error) {
            // Will be called if the user aborted the selection or if an error occurred.
        });
}

module.exports={
    pick: pick,
    subPick: subPick,
    pickImage: pickImage,
    images: images,
    addImage: addImage,
    categories: categories,
    selectCategory: selectCategory,
    selectImage: selectImage,
    categoryOpened: categoryOpened,
    categorySwitch: categorySwitch,
    subCategories: subCategories,
    subCategoryOpened: subCategoryOpened,
    selectSubCategory: selectSubCategory,
    subCategorySwitch: subCategorySwitch,  
}