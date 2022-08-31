import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ['content', 'tab']

  display(event) {
    console.log(event.params)
    this.contentTargets.forEach(element => {
      element.classList.add('d-none')
    });
    this.contentTargets[event.params.index].classList.remove('d-none')
    
    this.tabTargets.forEach(element => {
      element.classList.remove('selected-tab')
    });
    this.tabTargets[event.params.index].classList.add('selected-tab')
  }
}
