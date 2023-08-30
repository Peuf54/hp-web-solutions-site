import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="responsive-image"
export default class extends Controller {
  static targets = ["imageContainer"];

  connect() {
    this.checkScreenSize();
    window.addEventListener("resize", () => this.checkScreenSize());
  }

  disconnect() {
    window.removeEventListener("resize", () => this.checkScreenSize());
  }

  checkScreenSize() {
    if (window.innerWidth > 600) {
      this.imageContainerTarget.innerHTML = `<img src="https://i.ibb.co/hFw6KPb/hero-illustration.webp" alt="Illustration de création de site web." width="250" height="166">`;
    } else {
      this.imageContainerTarget.innerHTML = '';
    }
  }
}
