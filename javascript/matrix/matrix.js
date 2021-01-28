export class Matrix {
  constructor(text) {
    this.text = text;
  }

  get rows() {
    return this.text
               .split("\n")
               .map(row => row.split(' ')
                              .map(element => Number(element)));
  }

  get columns() {
    return this.rows[0]
               .map((_element, index) => this.rows.map(row => row[index])
            );
  }
}