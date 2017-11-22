var movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
];
var bMovies = movies.filter(function (el) {
    return (el.title.toLowerCase().indexOf('b') !== -1);
});
var bMovieIDs = bMovies.map(function (value) {
    return value.id;
});
console.log(bMovieIDs);