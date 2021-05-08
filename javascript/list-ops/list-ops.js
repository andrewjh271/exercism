export class List {
  constructor(values) {
    this.values = values || [];
  }

  append(list) {
    this.values = [...this.values, ...list.values];
    return this;
  }

  concat(lists) {
    for(let i = 0; i < lists.values.length; i++) {
      this.values = [...this.values, ...lists.values[i].values];
    }
    return this;
  }

  filter(fn) {
    const whiteList = [];
    for(let i = 0; i < this.values.length; i++) {
      if (fn.call(null, this.values[i])) whiteList.push(this.values[i]);
    }
    this.values = whiteList;
    return this;
  }

  map(fn) {
    for(let i = 0; i < this.values.length; i++) {
      this.values[i] = fn.call(null, this.values[i]);
    }
    return this;
  }

  length() {
    return this.values.length;
  }

  foldl(fn, acc) {
    for(let i = 0; i < this.values.length; i++) {
      acc = fn.call(null, acc, this.values[i]);
    }
    return acc;
  }

  foldr(fn, acc) {
    for(let i = this.values.length - 1; i >= 0; i--) {
      acc = fn.call(null, acc, this.values[i]);
    }
    return acc;
  }

  reverse() {
    for(let i = 0; i < this.values.length / 2; i++) {
      const temp = this.values[i];
      this.values[i] = this.values[this.values.length - 1 - i];
      this.values[this.values.length - 1 - i] = temp;
    }
    return this;
  }
}
