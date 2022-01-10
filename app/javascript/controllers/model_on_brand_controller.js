import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['brand-name', 'model-name'];

  // connect() {
  //   console.log(this.element);
  //   console.log(this.brandName.value);
  //   console.log(this.modelName);
  // }

  send(event) {
    event.preventDefault();
    console.log('TODO: send from data')
  }
}
