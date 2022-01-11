const selectModel = () => {
  const brand = document.querySelector('#car_brand');
  const model = document.querySelector('div.model-car select ');

  if (brand) {
    brand.addEventListener('blur', (event) => {
      console.log(brand.value)
      console.log(model)
    })
  }
}

export { selectModel };
