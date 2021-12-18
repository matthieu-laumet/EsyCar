const showCard = (item) => {
  const triggerBtns = document.querySelectorAll(".card-toggle");
  const borderLeftAgences = document.querySelectorAll(".agence");

  // const borderLeftAcc = document.querySelectorAll(".agence")
  if (triggerBtns) {
    triggerBtns.forEach((triggerBtn) => {
      triggerBtn.addEventListener("click", (event) => {
        const element = document.querySelector("." + triggerBtn.id);
        element.classList.toggle("hidden")
        // const element2 = document.querySelector("." + triggerBtn.id);
        triggerBtn.classList.toggle("rotate")
        // // element2.classList.toggle(".border-left-accordeon")
      });
    });
  }
}

export { showCard };
