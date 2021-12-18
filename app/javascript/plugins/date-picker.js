import flatpickr from "flatpickr";

const datePicker = () => {
  flatpickr("#booking_starts_at", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    mode: 'range',
    dateFormat: "Y-m-d"
  });
};

export { datePicker };
