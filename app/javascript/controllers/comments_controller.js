import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
  static targets = ["container", "input_form"]
  connect() {
    console.log(this.containerTarget)
  }

  resetForm(){
    console.log(this)
    console.log(this)
    this.input_formTarget.reset();
  }
}
