export default class Node {
  constructor(params) {
    this.previous = params.previous;
    this.next = params.next;
    this.value = params.value;
  }
}
