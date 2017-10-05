var meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner","salmon with lemon rice"]];
var mealsObject = {};
for(var i = 0; i < meals.length; i++){
  mealsObject[meals[i][0]] = meals[i][1];
}
console.log(mealsObject);