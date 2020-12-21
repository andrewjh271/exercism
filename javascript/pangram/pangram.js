// export const isPangram = string => {
//   return 'abcdefghijklmnopqrstuvwxyz'.split('').every(char => 
//     (string.toLowerCase().indexOf(char) !== -1));
// }

// mentor suggestion:

export const isPangram = string => {
  return 'abcdefghijklmnopqrstuvwxyz'.split('').every(char => 
    (string.toLowerCase().includes(char)));
}