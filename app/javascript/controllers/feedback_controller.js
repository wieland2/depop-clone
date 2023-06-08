import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="feedback"
export default class extends Controller {
  static targets = [ "newReview", "postReview"]
  connect() {

    this.newReviewTarget.addEventListener('click', function () {
      document.querySelector('.review').classList.remove('d-none');
      document.querySelector('.order__stats').classList.add('d-none');
    })

  }
}
