import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['alert']

  connect() {
    setTimeout(() => {
      this.close()
    }, 3000);
  }

  close(event) {
    this.alertTargets.forEach(element => {
      element.remove()
    });
  }
}
