import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use'

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ['dropdownMenu']

  connect() {
    useClickOutside(this)
  }

  show() {
    this.dropdownMenuTarget.classList.toggle("d-none");
  }

  hide() {
    this.dropdownMenuTarget.classList.add("d-none");
  }
}
