const showMap = (item) => {
  const voirMap = document.querySelector("#btn-carte");
  const map = document.querySelector(".d-none");
  const text = document.querySelector(".text-change");

  if (voirMap) {
      voirMap.addEventListener("click", (event) => {
        map.classList.toggle("d-none")
        text.innerHTML = 'Voir la liste'
      });
    };
}

export { showMap };


// const showMap = (item) => {
//   const voirMaps = document.querySelectorAll(".container-map");

//   if (voirMaps) {
//     voirMaps.forEach((voirMap) => {
//       voirMap.addEventListener("click", (event) => {
//         const element = document.querySelector("." + voirMap.id);
//         element.classList.toggle("hidden")
//       });
//     });
//   }
// }

// export { showMap };
