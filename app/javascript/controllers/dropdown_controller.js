import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use'

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['dropdownMenu']

  connect() {
    console.log('COUCOUUUU');
    useClickOutside(this)
  }

  show() {
    this.dropdownMenuTarget.classList.remove("d-none");
  }

  hide() {
    this.dropdownMenuTarget.classList.add("d-none");
  }
}
