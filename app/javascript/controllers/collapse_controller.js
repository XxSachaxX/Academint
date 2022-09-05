import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collapse"
export default class extends Controller {
  static targets = ['chapter', 'lesson']

  connect() {
    console.log("Collapse");
  }

  open() {
    this.
  }
}
