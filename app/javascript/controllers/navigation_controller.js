import { Controller } from "stimulus"

export default class extends Controller {
  toggle_menu(event) {
    this.targets.find("navbar-burger").classList.toggle('is-active')
    this.targets.find("navbar-menu").classList.toggle('is-active')
  }
}


