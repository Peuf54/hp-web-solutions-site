import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="burger-menu"
export default class extends Controller {
  static targets = [
    "openIcon",
    "closeIcon",
    "burgerMenu"
  ]

  open() {
    this.openIconTarget.classList.add('hidden');
    this.burgerMenuTarget.classList.add('opened');
    this.closeIconTarget.classList.remove('hidden');
  }
  
  close() {
    this.openIconTarget.classList.remove('hidden');
    this.burgerMenuTarget.classList.remove('opened');
    this.closeIconTarget.classList.add('hidden');
  }
}
