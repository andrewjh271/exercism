// export const age = (planet, seconds) => {
//   const earthAge = seconds / 31557600
//   switch (planet) {
//     case 'earth':
//       return round(earthAge)
//     case 'mercury':
//       return round (earthAge / 0.2408467)
//     case 'venus':
//       return round (earthAge / 0.61519726)
//     case 'mars':
//       return round(earthAge / 1.8808158)
//     case 'jupiter':
//       return round(earthAge / 11.862615)
//     case 'saturn':
//       return round(earthAge / 29.447498)
//     case 'uranus':
//       return round(earthAge / 84.016846)
//     case 'neptune':
//       return round(earthAge / 164.79132)
//     default:
//       return "I haven't discovered that planet yet."
//   }
// };

// const round = number => Math.round(number * 100) / 100

// mentor suggestions:

export const age = (planet, seconds) => {
  const earthAge = seconds / 31557600

  const planets = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  return round (earthAge / planets[planet])

};

const round = number => +number.toFixed(2)