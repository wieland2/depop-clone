import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // Declare our two targets
  static targets = ["input", "preview"]

  displayPreview(event) {
    const reader = new FileReader();
    reader.onload = (event) => {
      this.previewTarget.src = event.currentTarget.result;
    }
    reader.readAsDataURL(this.inputTarget.files[0])
    this.previewTarget.classList.remove('hidden');
    this.previewTarget.classList.add('z-index')
  }

}
