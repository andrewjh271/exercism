export const rows = (line) => {
  if(line === 0) return [];
  let array = rows(line - 1);
  let last = array[array.length - 1] || [];
  let current = last.map((element, index) =>
    element + (last[index - 1] || 0)
  ).concat(1);
  return array.concat([current]);
}