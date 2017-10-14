function mutation(string1,string2){
  var isTrue = true;
  for(var i=0; i < string2.length; i++) {
    if (string1.indexOf(string2[i]) == -1){
      isTrue = false;
    }
  }
  return isTrue;
}
console.log(mutation("burly", "ruby"));    // true
console.log(mutation("burly", "python"));  // false