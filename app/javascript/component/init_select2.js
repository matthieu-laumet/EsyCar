import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  const select = document.querySelectorAll('.select')
  if (select) {
    $('.select2').select2();
  }
};

export { initSelect2 };
