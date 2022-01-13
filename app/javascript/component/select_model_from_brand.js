const selectModel = () => {
  const brand = document.querySelector('#car_brand');
  const model = document.querySelector('#car_model');

  if (brand) {
    brand.remove(0)
    // model.remove(0);
  }

  if (model) {
    brand.addEventListener('change', (event) => {
      model.selectedOptions[0].value = model.selectedOptions[0].text
    })
  }

  // let selectobject = document.getElementById("car_model");
  // for (let i = 0; i < selectobject.length; i++) {
  //   if (selectobject.options[i].value == 'Toyota')
  //     selectobject.remove(i);
  // }


}

export { selectModel };
