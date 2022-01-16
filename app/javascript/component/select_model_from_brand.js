const selectModel = () => {
  const brand = document.querySelector('#car_brand');
  const modelOption = document.querySelector('#car_model');
  const allModels = document.querySelectorAll('#car_model option')

  if (allModels) {
    // brand.remove(0);
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
    brand.addEventListener('change', (event) => {
      if (brand.value == "") {
        allModels.forEach((model) => {
          model.style.display = "block"
        });
      }
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
}

export { selectModel };
