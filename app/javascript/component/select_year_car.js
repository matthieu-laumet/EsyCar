const selectYear = () => {
  const years = document.querySelector('#car_year_of_production');

  if (years) {
    years.selectedIndex = 3;
  }

}

export { selectYear };
