export const gigasecond = (date) => {

  // Attempt 1:
  // let newDate = new Date(date);
  // newDate.setSeconds(1000000000)
  // 1 hour too late in tests 1-3; 1 hour too early in tests 4-5; also 1 second difference in test 5


  // Attempt 2, trying to manually offset for what I thought was a daylight savings time issue:
  // let newDate = new Date(date);
  // newDate.setHours(newDate.getHours() - 1, 0, 1000000000);
  // 2 hours too early in test 4; 3 hours too early in test 5, minus 1 second??

  let startTime = date.getTime();
  let newDate = new Date(startTime + 1000000000000)

  return newDate;
}