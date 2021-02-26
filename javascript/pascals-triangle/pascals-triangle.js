export const rows = (row) => {
  if (row === 0) return [];
  const triangle = rows(row - 1);
  const lastRow = triangle[triangle.length - 1] || [];
  const nextRow = lastRow
    .map((element, index) => element + (lastRow[index - 1] || 0))
    .concat(1);
  return [...triangle, nextRow];
};
