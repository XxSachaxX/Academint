import { add, Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ['content', 'tab', "link"]

  connect () {
    this.disactivateTabs()
  }

  display(event) {
    this.tabTargets.forEach(element => {
      element.classList.remove('selected-tab')
    });
    this.tabTargets[event.params.index].classList.add('selected-tab')

    this.contentTargets.forEach(element => {
      element.classList.add('d-none')
    });
    this.contentTargets[event.params.index].classList.remove('d-none')
  }

  nextLesson(event) {
    event.preventDefault()
    const url = this.linkTarget.href

    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" },
    });
    this.display(event)
  }

  disactivateTabs() {
    this.tabTargets.forEach(element => {
      if (element.innerHTML.includes("pending")) {
        element.removeAttribute("data-action");
        element.classList.remove("clickable")
      }
    });
  }
}
