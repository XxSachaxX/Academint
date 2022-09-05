import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collapse"
export default class extends Controller {
  static targets = ['chapter', 'lesson']

  connect() {
    console.log("Collapse");
  }

  open(event) {
    console.log(this.lessonTargets);
    this.lessonTargets.forEach(element => {
      element.classList.add('d-none')
    })
    this.lessonTargets[event.params.index].classList.remove('d-none')
  }
}
