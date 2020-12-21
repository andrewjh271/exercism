const COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

// export const decodedValue = (arr) => +`${COLORS.indexOf(arr[0])}${COLORS.indexOf(arr[1])}`

//Two suggestions from mentor: deconstructed array in argument; using math instead of casting to string and back to number

export const decodedValue = ([color1, color2]) => COLORS.indexOf(color1) * 10 + COLORS.indexOf(color2);