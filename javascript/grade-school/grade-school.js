export class GradeSchool {
  constructor() {
    this.studentsDB = new Proxy({}, {
      get: function (obj, prop) {
        obj[prop] ||= [];
        return obj[prop];
      }
    });
  }

  roster() {
    const publicRoster = {};
    for (const prop in this.studentsDB) {
      publicRoster[prop] = [...this.studentsDB[prop]];
    }
    return publicRoster;
  }

  add(name, grade) {
    this.removeStudent(name);
    let index = this.studentsDB[grade].findIndex((student) => name < student);
    index === -1
      ? this.studentsDB[grade].push(name)
      : this.studentsDB[grade].splice(index, 0, name);
  }

  grade(grade) {
    return [...this.studentsDB[grade]];
  }

  removeStudent(name) {
    for (const prop in this.studentsDB) {
      const index = this.studentsDB[prop].indexOf(name);
      if (index > -1) {
        this.studentsDB[prop].splice(index, 1);
        return;
      }
    }
  }
}
