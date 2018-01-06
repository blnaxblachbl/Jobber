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

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo
}