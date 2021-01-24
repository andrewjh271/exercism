export class Matrix {
  constructor(text) {
    this.text = text;
  }

  get rows() {
    return this.text
               .split("\n")
               .map(row => row.split(' ')
                              .map(element => +element));
  }

  get columns() {
    const cols = []
    this.rows.forEach(row => {
      row.forEach((element, index) => {
        cols[index] ??= []
        cols[index].push(element)
      })
    })
    return cols;
  }
}