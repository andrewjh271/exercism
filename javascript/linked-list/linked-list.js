/* eslint-disable import/prefer-default-export */
/* eslint-disable no-plusplus */
//
// This is only a SKELETON file for the 'Linked List' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
import Node from './node';

export class LinkedList {
  constructor() {
    this.first = null;
    this.last = null;
  }

  push(value) {
    if (this.isEmpty()) {
      const node = new Node({ value });
      [this.first, this.last] = [node, node];
    } else {
      const temp = this.last;
      this.last = new Node({ value, previous: temp });
      temp.next = this.last;
    }
  }

  pop() {
    const temp = this.last;
    this.last = this.last.previous;
    if (this.last) {
      this.last.next = null;
    } else {
      this.first = null;
    }
    return temp.value;
  }

  shift() {
    const temp = this.first;
    this.first = this.first.next;
    if (this.first) {
      this.first.previous = null;
    } else {
      this.last = null;
    }
    return temp.value;
  }

  unshift(value) {
    if (this.isEmpty()) {
      const node = new Node({ value });
      [this.first, this.last] = [node, node];
    } else {
      const temp = this.first;
      this.first = new Node({ value, next: temp });
      temp.previous = this.first;
    }
  }

  delete(value) {
    let current = this.first;
    while (current && current.value !== value) {
      current = current.next;
    }
    if (current && current === this.first) {
      return this.shift();
    }
    if (current && current === this.last) {
      return this.pop();
    }
    if (current) {
      current.previous.next = current.next;
      current.next.previous = current.previous;
      return current;
    }
    return null;
  }

  count() {
    let count = 0;
    let current = this.first;
    while (current) {
      current = current.next;
      count++;
    }
    return count;
  }

  isEmpty() {
    return !this.first;
  }
}
