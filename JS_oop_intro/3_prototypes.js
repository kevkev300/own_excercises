// ES5
// Constructor
// !!! arrow function and const don't work
function Book(title, author, year) {
  this.title = title;
  this.author = author;
  this.year = year;
}

// getSummary as prototype method
Book.prototype.getSummary = function() {
    return `${this.title} was written by ${this.author} in ${this.year}`;
  };

Book.prototype.getAge = function() {
  const years = new Date().getFullYear() - this.year;
  return `${this.title} is ${years} old`;
};

Book.prototype.revise = function(newYear) {
  this.year = newYear;
  this.revised = true;
}

// Instatiante an Object --> run what is in constructor
// all those things will be typeof == object
const book1 = new Book('Book One', 'John Doe', '2013');
const book2 = new Book('Book Two', 'Jane Doe', '2016');

// Access
console.log(book2.getSummary());
console.log(book2);
console.log(book1.getAge());

book2.revise('2018');
console.log(book2);


// getSummary is not directly stored in the object but in the prototype (_proto_)

// why? --> we don't want .getSummary for each book!
