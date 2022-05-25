import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("Hello!")
  }
  updateNavbar () {
    console.log("Hi!")
  }
}
