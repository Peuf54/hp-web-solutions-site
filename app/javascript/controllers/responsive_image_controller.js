import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="responsive-image"
export default class extends Controller {
  connect() {
    this.checkScreenSize();
    window.addEventListener("resize", () => this.checkScreenSize());
  }

  disconnect() {
    window.removeEventListener("resize", () => this.checkScreenSize());
  }

  checkScreenSize() {
    // Supprimer l'ancienne image s'il y en a une
    const oldImage = this.element.querySelector(".responsive-image");
    if (oldImage) {
      oldImage.remove();
    }

    // Ajouter une nouvelle image si la largeur de la fenêtre est supérieure à 600
    if (window.innerWidth > 600) {
      const newImage = document.createElement("img");
      newImage.className = "responsive-image";  // Ajouter une classe pour pouvoir supprimer cette image plus tard
      newImage.src = "https://i.ibb.co/hFw6KPb/hero-illustration.webp";
      newImage.alt = "Illustration de création de site web.";
      newImage.width = 250;
      newImage.height = 166;
      this.element.appendChild(newImage);
    }
  }
}
