import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab-dashboard"
export default class extends Controller {
  static targets = ["courses", "certificates","dashboardCourses", "dashboardCertificates"]

  connect() {
    console.log('hello');
    console.log(this.urlValue);
  }

  showCourses() {
    this.coursesTarget.classList.add('active-tab')
    this.dashboardCoursesTarget.classList.remove('d-none')
    this.certificatesTarget.classList.remove('active-tab')
    this.dashboardCertificatesTarget.classList.add('d-none')
  }

  showCertificates() {
    this.coursesTarget.classList.remove('active-tab')
    this.dashboardCoursesTarget.classList.add('d-none')
    this.certificatesTarget.classList.add('active-tab')
    this.dashboardCertificatesTarget.classList.remove('d-none')
  }
}
