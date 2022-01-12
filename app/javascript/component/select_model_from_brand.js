const selectModel = () => {
  const brand = document.querySelector('#car_brand');
  const model = document.querySelector('#car_model');
  // const allModels = document.querySelector('.model-car');
  const allAudi = document.querySelector('.model-car-audi');
  const allCitroen = document.querySelector('.model-car-citroen');
  const allCitroen2 = document.querySelector('.model-car-citroen #car_model');
  const allDacia = document.querySelector('.model-car-dacia');
  const allFord = document.querySelector('.model-car-ford');
  const allNissan = document.querySelector('.model-car-nissan');
  const allOpel = document.querySelector('.model-car-opel');
  const allPeugeot = document.querySelector('.model-car-peugeot');
  const allRenault = document.querySelector('.model-car-renault');
  const allSeat = document.querySelector('.model-car-seat');
  const allToyota = document.querySelector('.model-car-toyota');
  const allVolkswagen = document.querySelector('.model-car-volkswagen');

  // if (model) {
  //   brand.addEventListener('change', (event) => {
  //     console.log(brand.value)
  //     console.log(model)
  //     // model.remove(1);
  //     model.options[1].value = 'Peugeot'
  //   })
  // }

  if (brand) {
    brand.remove(0)
  }

  if (model) {
    document.querySelector('.model-car-audi #car_model').remove(0);
    brand.addEventListener('change', (event) => {
      if (brand.value == 'Audi') {
        // allModels.classList.add('d-none');
        allAudi.classList.remove('d-none');
        document.querySelector('.model-car-audi #car_model').remove(0);
      } else {
        allAudi.classList.add('d-none');
      }
      if (brand.value == 'Citroen') {
        // allModels.classList.add('d-none');
        allCitroen.classList.remove('d-none');
        document.querySelector('.model-car-citroen #car_model').remove(0);
      } else {
        allCitroen.classList.add('d-none');
      }
      if (brand.value == 'Dacia') {
        // allModels.classList.add('d-none');
        allDacia.classList.remove('d-none');
        document.querySelector('.model-car-dacia #car_model').remove(0);
      } else {
        allDacia.classList.add('d-none');
      }
      if (brand.value == 'Ford') {
        // allModels.classList.add('d-none');
        allFord.classList.remove('d-none');
        document.querySelector('.model-car-ford #car_model').remove(0);
      } else {
        allFord.classList.add('d-none');
      }
      if (brand.value == 'Nissan') {
        // allModels.classList.add('d-none');
        allNissan.classList.remove('d-none');
        document.querySelector('.model-car-nissan #car_model').remove(0);
      } else {
        allNissan.classList.add('d-none');
      }
      if (brand.value == 'Opel') {
        // allModels.classList.add('d-none');
        allOpel.classList.remove('d-none');
        document.querySelector('.model-car-opel #car_model').remove(0);
      } else {
        allOpel.classList.add('d-none');
      }
      if (brand.value == 'Peugeot') {
        // allModels.classList.add('d-none');
        allPeugeot.classList.remove('d-none');
        document.querySelector('.model-car-peugeot #car_model').remove(0);
      } else {
        allPeugeot.classList.add('d-none');
      }
      if (brand.value == 'Renault') {
        // allModels.classList.add('d-none');
        allRenault.classList.remove('d-none');
        document.querySelector('.model-car-renault #car_model').remove(0);
      } else {
        allRenault.classList.add('d-none');
      }
      if (brand.value == 'Seat') {
        // allModels.classList.add('d-none');
        allSeat.classList.remove('d-none');
        document.querySelector('.model-car-seat #car_model').remove(0);
      } else {
        allSeat.classList.add('d-none');
      }
      if (brand.value == 'Toyota') {
        // allModels.classList.add('d-none');
        allToyota.classList.remove('d-none');
        document.querySelector('.model-car-toyota #car_model').remove(0);
      } else {
        allToyota.classList.add('d-none');
      }
      if (brand.value == 'Volkswagen') {
        // allModels.classList.add('d-none');
        allVolkswagen.classList.remove('d-none');
        document.querySelector('.model-car-volkswagen #car_model').remove(0);
      } else {
        allVolkswagen.classList.add('d-none');
      }
    })
  }

  // let selectobject = document.getElementById("car_model");
  // for (let i = 0; i < selectobject.length; i++) {
  //   if (selectobject.options[i].value == '2008')
  //     selectobject.remove(i);
  // }


}

export { selectModel };
