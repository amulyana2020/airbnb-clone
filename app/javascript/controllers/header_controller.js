import { Controller } from "@hotwired/stimulus"
import {toggle} from 'el-transition'

// Connects to data-controller="header"
export default class extends Controller {

  static targets = ["openUserMenu", "userDropDown", "openMobileMenu", "mobileDropDown"]
  connect() {
    this.openUserMenuTarget.addEventListener("click", () => {
      toggle(this.userDropDownTarget);
    });

    this.openMobileMenuTarget.addEventListener("click", () => {
      toggle(this.mobileDropDownTarget);
    });
  }
}

