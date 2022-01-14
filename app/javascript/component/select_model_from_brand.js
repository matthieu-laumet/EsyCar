const selectModel = () => {
  const brand = document.querySelector('#car_brand');
<<<<<<< HEAD
  const model = document.querySelector('div.model-car select');
=======
  const modelOption = document.querySelector('#car_model');
  const allModels = document.querySelectorAll('#car_model option')
>>>>>>> b6d281dbece431d59df3acf829d068f275f25964

  if (allModels) {
    // brand.remove(0);
    brand.addEventListener('change', (event) => {
      if (brand.value == 'Toyota') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Toyota") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Ford') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Ford") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Audi') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Audi") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Citroen') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Citroen") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Dacia') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Dacia") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Nissan') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Nissan") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Opel') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Opel") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Peugeot') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Peugeot") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Renault') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Renault") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Seat') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Seat") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
      if (brand.value == 'Volkswagen') {
        allModels.forEach((model) => {
          model.style.display = "block"
          if (model.value == "Volkswagen") {
            modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
          } else {
            model.style.display = "none"
          }
        });
      }
    })
  }

  if (modelOption) {
    modelOption.addEventListener('change', (event) => {
      modelOption.selectedOptions[0].value = modelOption.selectedOptions[0].text
    })
  }
  // model.selectedOptions[0].value = model.selectedOptions[0].text

  // let selectobject = document.getElementById("car_model");
  // for (let i = 0; i < selectobject.length; i++) {
  //   if (selectobject.options[i].value == 'Toyota')
  //     selectobject.remove(i);
  // }


}

export { selectModel };
