var array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];
var flattened_array =[];
for(var i = 0; i < array.length; i++) {
  for(var j = 0; j < array[i].length; j++) {
    flattened_array.push(array[i][j]);
  }
}
console.log(flattened_array); 