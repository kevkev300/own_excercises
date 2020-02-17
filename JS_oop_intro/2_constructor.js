// ES5
// Constructor
// !!! arrow function and const don't work
function Book(title, author, year) {
  this.title = title;
  this.author = author;
  this.year = year;

  this.getSummary = function() {
    return `${this.title} was written by ${this.author} in ${this.year}`;
  };
}

// Instatiante an Object --> run what is in constructor
// all those things will be typeof == object
const book1 = new Book('Book One', 'John Doe', '2013');
const book2 = new Book('Book Two', 'Jane Doe', '2016');

// Access
console.log(book1.title);
console.log(book1);
console.log(typeof book1);
console.log(book2.getSummary());
