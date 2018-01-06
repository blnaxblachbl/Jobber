let Observable = require("FuseJS/Observable");
let images = Observable([]);
let category = Observable("10:00 - 11:00", "11:00 - 12:00", "12:00 - 13:00", "13:00 - 14:00", "14:00 - 15:00", "15:00 - 16:00", "16:00 - 17:00", "17:00 - 18:00", "18:00 - 19:00", "19:00 - 20:00");
let selectCategory = Observable("10:00 - 11:00");
let data=[];

data = [
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
    {url: "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg", picked: false},
]


images.replaceAll(data);

module.exports={
    images: images,
    category: category,
    selectCategory: selectCategory  
}