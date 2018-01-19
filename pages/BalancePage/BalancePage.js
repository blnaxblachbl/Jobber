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

addBalance = () => {
    console.log(true)
}

module.exports = {
    goHome: goHome,
    goAccount: goAccount,
    goBalance: goBalance,
    goInfo: goInfo,
    addBalance: addBalance
}