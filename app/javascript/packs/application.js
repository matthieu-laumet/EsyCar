// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

// Internal imports, e.g:
import { actionModal } from '../plugins/modal';
import { changeColor } from '../component/change-color';
import { initMapbox } from '../plugins/init_mapbox';
import { showCard } from '../plugins/show-card';
import { initAutocomplete } from '../plugins/init_autocomplete.js';
import { initAutocomplete2 } from '../plugins/init_autocomplete2.js';
import { showMap } from '../plugins/display_map';
import { datePicker } from '../plugins/date-picker';
import { initSelect2 } from '../component/init_select2.js';
import { initUpdateNavbarOnScroll } from '../component/navbar.js';
import { loadDynamicBannerText } from '../component/banner.js';
import { selectModel } from '../component/select_model_from_brand.js';
import { selectYear } from '../component/select_year_car.js';

// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initSelect2();
  actionModal();
  // changeColor();
  // const mapElement = document.querySelectorAll('ap-input-icon');
  // if (mapElement.length !== 0) {
  //   initMapbox();
  // };
  initMapbox();
  showCard();
  showMap();
  datePicker();
  initAutocomplete();
  initAutocomplete2();
  const allModels = document.querySelectorAll('#car_model option')
  if (allModels.length !== 0) {
    selectModel();
  };
  selectYear();
  initUpdateNavbarOnScroll();
  // loadDynamicBannerText();
});

import "controllers"
