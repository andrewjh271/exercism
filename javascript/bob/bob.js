const question = str => /\?\s*$/.test(str)
const yell = str => str === str.toUpperCase() && /[A-Z]/.test(str)
const questionYell = str => question(str) && yell(str)
const nothing = str => !/\w/.test(str)

export const hey = (message) => {
  switch (true) {
    case questionYell(message):
      return "Calm down, I know what I'm doing!";
    case question(message):
      return "Sure.";
    case yell(message):
      return "Whoa, chill out!";
    case nothing(message):
      return "Fine. Be that way!";
    default:
      return "Whatever.";
  }
};