let Observable = require("FuseJS/Observable");
let categories = Observable();

categories = [
    { name: "Вакансии", picked: false },
    { name: "Юридические услуги", picked: false },
    { name: "Няни и сиделки", picked: false },
    { name: "Ремонт", picked: false },
    { name: "Строительство и ремонт", picked: false },
    { name: "Праздники и мероприятия", picked: false },
    { name: "Красота и здоровье", picked: false },
    { name: "Обучение по интересам", picked: false },
    { name: "Грузчики", picked: false }
]

goSubCategories = (val) => {
    adsRouter.push("subCategories", {name: val.data.name})
}

module.exports = {
    categories: categories,
    goSubCategories: goSubCategories,
}