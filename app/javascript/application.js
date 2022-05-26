// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"


const btn = document.querySelector(".plant__btn");

btn.addEventListener("click", (event) => {
  event.preventDefault;
  setTimeout(function(){
    document.location.href="/plants";
 }, 4000);
});
