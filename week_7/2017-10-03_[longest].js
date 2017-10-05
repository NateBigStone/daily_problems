function find_longest_word(phrase){
  var phraseArray = phrase.split(" ");
  var longest = "";
  for(var i = 0; i < phraseArray.length; i++){
    if(longest.length < phraseArray[i].length){
      longest = phraseArray[i];
    }
  }
  return longest;
}

console.log(find_longest_word("What is the longest word in this phrase?"));  // "longest"