//
// This is only a SKELETON file for the 'Protein Translation' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const translate = (theString) => {
  const codonCodes = {
    AUG: 'Methionine',
    UUU: 'Phenylalanine',
    UUC: 'Phenylalanine',
    UUA: 'Leucine',
    UUG: 'Leucine',
    UCU: 'Serine',
    UCC: 'Serine',
    UCA: 'Serine',
    UCG: 'Serine',
    UAU: 'Tyrosine',
    UAC: 'Tyrosine',
    UGU: 'Cysteine',
    UGC: 'Cysteine',
    UGG: 'Tryptophan',
    UAA: 'STOP',
    UAG: 'STOP',
    UGA: 'STOP',
  }

  let translation = [];
  let currentCodon;

  if(!theString) return translation;

  for(let i = 0; i < theString.length; i++) {
    if(i % 3 == 0) currentCodon = '';
    currentCodon += theString.charAt(i);
    if(i % 3 == 2 || i == theString.length - 1) {
      if(codonCodes[currentCodon] == 'STOP') break;
      if(currentCodon in codonCodes) translation.push(codonCodes[currentCodon]);
      else throw 'Invalid codon';
    }
  }

  return translation;
};
