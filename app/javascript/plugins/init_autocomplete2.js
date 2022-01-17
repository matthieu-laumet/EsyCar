import places from 'places.js';

const initAutocomplete2 = () => {
  const addressInputNew = document.getElementById('car_address');
  if (addressInputNew) {
    places({ container: addressInputNew });
  }
};

export { initAutocomplete2 };
