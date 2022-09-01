import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['alert']

  connect() {
    console.log('coucou alerte');
  }

  close(event) {
    this.alertTargets.forEach(element => {
      element.remove()
    });
  }
}
