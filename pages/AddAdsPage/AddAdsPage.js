let Observable = require("FuseJS/Observable");
let images = Observable([]);
let category = Observable("10:00 - 11:00", "11:00 - 12:00", "12:00 - 13:00", "13:00 - 14:00", "14:00 - 15:00", "15:00 - 16:00", "16:00 - 17:00", "17:00 - 18:00", "18:00 - 19:00", "19:00 - 20:00");
let selectCategory = Observable("Выбрать категорию");
let selectSubCategory = Observable("Выбрать подкатегорию");
let data=[];
let categoryOpened = Observable(false);
let subCategoryOpened = Observable(false);

data = [
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
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

images.replaceAll(data);

module.exports={
    pick: pick,
    subPick: subPick,
    images: images,
    categories: categories,
    selectCategory: selectCategory,
    categoryOpened: categoryOpened,
    categorySwitch: categorySwitch,
    subCategories: subCategories,
    subCategoryOpened: subCategoryOpened,
    selectSubCategory: selectSubCategory,
    subCategorySwitch: subCategorySwitch,  
}