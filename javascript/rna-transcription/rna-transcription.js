const COMPLEMENTS = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
}

export const toRna = string => string.split('').map(char => COMPLEMENTS[char]).join('');