import { Controller } from "stimulus"

export default class extends Controller {
  remove_target(event) {
    this.targets.find("message").classList.add('is-hidden')
  }
}

