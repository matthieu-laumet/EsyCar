const actionModal = () => {
  const modalBtn = document.querySelector('.modal-btn');
  const modalBg = document.querySelector('.modal-bg');
  const modalContainer = document.querySelector('.modal-container');
  const modalClose = document.querySelector('.modal-close');

  if (modalBtn) {
    modalBtn.addEventListener('click', (event) => {
      modalBg.classList.add('bg-active');
      modalContainer.classList.add('pushObject');
    })
  }

  if (modalClose) {
    modalClose.addEventListener('click', (event) => {
      modalBg.classList.remove('bg-active');
      modalContainer.classList.remove('pushObject');
    })
  }
}

export { actionModal };
