function find_the_most_letter_a(array){
  var letterHash={};
  for(var i=0; i < array.length; i++){
    letterHash[array[i]] = 0;
    for(var j =0; j < array[i].length; j++){
      if(array[i][j] === "a"){
        letterHash[array[i]] += 1;
      }
    }
  }
  return Object.keys(letterHash).find(key => letterHash[key] === Object.values(letterHash).sort().pop());
}
console.log(find_the_most_letter_a(["alphabet", "aardvark", "anarchy"]));