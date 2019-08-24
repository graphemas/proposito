require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
//require("channels")

 import "controllers"

 import LocalTime from "local-time"
LocalTime.start()

 import { library, dom } from "@fortawesome/fontawesome-svg-core";
import { faHome, faQuestion, faMehBlank, faShoppingBag, faBars } from "@fortawesome/free-solid-svg-icons";
library.add(faHome, faQuestion, faMehBlank, faShoppingBag, faBars);
dom.watch();

 if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/service-worker.js', { scope: './' })
    .then(function(reg) {
      console.log('[Proposito]', 'Service worker registered!');
      console.log(reg);
    });
}
