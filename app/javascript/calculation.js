function calc (){
  const price = document.getElementById("item-price");

  price.addEventListener('input', () => {
    const commission = document.getElementById("add-tax-price");
    commission.innerHTML = Math.round(price.value * 0.1 );
    const profit = document.getElementById("profit");
    profit.innerHTML = Math.round(price.value - Math.round(price.value * 0.1 ))
  })
 };
 
 window.addEventListener('load', calc);