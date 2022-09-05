import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collapse"
export default class extends Controller {
  static targets = ['chapter', 'lesson']

  connect() {
    console.log("Collapse");
  }

  open(event) {
    this.lessonTargets.forEach(element => {
      element.classList.add('d-none')
    })
    const element = this.lessonTargets[event.params.index]
    const y = element.getBoundingClientRect().top + window.scrollY + 73;
    element.classList.remove('d-none')
    window.scroll({
      top: y,
      behavior: 'smooth'
    });
  }
}
