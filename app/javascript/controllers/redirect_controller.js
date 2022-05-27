import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="redirect"
export default class extends Controller {
  connect() {
    console.log("hello ")
  }
  redirect(event) {
    event.preventDefault;
    const baseUrl = window.location.origin;
    console.log('redirecting to dashboard')
    setTimeout(() => {
      document.location.href = `${baseUrl}/dashboard`;
    }, 4000);
  };
}
