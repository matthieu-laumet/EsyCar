const selectModel = () => {
  const brand = document.querySelector('#car_brand');

  if (brand) {
    brand.addEventListener('blur', (event) => {
      console.log(brand.value)
    })
  }
}

export { selectModel };
