import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="review"
export default class extends Controller {
  static targets = [ "content", "closeContent" ]
  connect() {
    this.contentTarget.addEventListener('click', function () {
      document.querySelector('.user__feedbacks').classList.remove('d-none');
      // document.querySelector('.user').style.opacity = 0.7;
      // document.querySelector('.user').style.filter = "blur(1px)";
      // document.querySelector('.header').style.opacity = 0.7;
      // document.querySelector('.user__feedbacks').style.opacity = 1;
      // document.querySelector('.user__feedbacks').style.filter = "blur(0)";
    })

    this.closeContentTarget.addEventListener('click', function () {
      document.querySelector('.user__feedbacks').classList.add('d-none');
    })

  }



}
