import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lazy-loader"
export default class extends Controller {
  connect() {
    const img = document.getElementById("myImage");
    img.onload = function () {
      this.style.visibility = "visible";
    };

  }
}
