goBack = () => {
    favoriteRouter.goBack();
}

goAccount = () => {
    favoriteRouter.push("otherAccount");
}

module.exports = {
    goBack: goBack,
    goAccount: goAccount
}