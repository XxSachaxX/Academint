import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ['content', 'tab', "link"]

  display(event) {
    this.contentTargets.forEach(element => {
      element.classList.add('d-none')
    });
    this.contentTargets[event.params.index].classList.remove('d-none')
    console.log(event.params.index);

    this.tabTargets.forEach(element => {
      element.classList.remove('selected-tab')
    });
    this.tabTargets[event.params.index].classList.add('selected-tab')
  }

  nextLesson(event) {
    event.preventDefault()
    const url = this.linkTarget.href

    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
    this.display(event)
  }
}
