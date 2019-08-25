/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
//require("channels")

import "controllers"

import LocalTime from "local-time"
LocalTime.start()

import { library, dom } from "@fortawesome/fontawesome-svg-core";
import { faHome, faSearch, faAngleDown, faShoppingBasket, faMehBlank, faShoppingBag, faBars, faCreditCard } from "@fortawesome/free-solid-svg-icons";
library.add(faHome, faSearch, faAngleDown, faMehBlank, faShoppingBasket, faShoppingBag, faBars, faCreditCard);
dom.watch();

if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/service-worker.js', { scope: './' })
    .then(function(reg) {
      console.log('[Vink]', 'Service worker registered!');
      console.log(reg);
    });
}

document.addEventListener('DOMContentLoaded', function() {
  let cardToggles = document.getElementsByClassName('card-toggle');
  for (let i = 0; i < cardToggles.length; i++) {
    cardToggles[i].addEventListener('click', e => {
      e.currentTarget.parentElement.parentElement.childNodes[3].classList.toggle('is-hidden');
    });
  }
});
