import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['dropdownMenu']

  connect() {
    console.log(this.dropdownMenuTarget);
  }

  showDropdown() {
    this.dropdownMenuTarget.classList.toggle("d-none");
  }

}
