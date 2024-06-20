import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input"];

  connect() {
    // console.log("hello");
  }

  search(event) {
    // this.inputTarget.preventDefault()
    // console.log(this.inputTarget)
  }
}
