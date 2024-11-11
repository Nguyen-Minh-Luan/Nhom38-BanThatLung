
document.querySelector("#increment").addEventListener("click", () => {
    let quantity = document.querySelector("#quantity");
    quantity.value = parseInt(quantity.value) + 1;
});

document.querySelector("#decrement").addEventListener("click", () => {
    let quantity = document.querySelector("#quantity");
    if (parseInt(quantity.value) > 1) {
        quantity.value = parseInt(quantity.value) - 1;
    }
});