// ES6

class Book {
  constructor(title, author, year) {
    this.title = title;
    this.author = author;
    this.year = year;
  }

  // thats a prototype method!
  getSummary() {
    return `${this.title} was written by ${this.author} in ${this.year}`;
  }
}

// Magazine subclass that inherits from Book
class Magazine extends Book {
  constructor(title, author, year, month) {
    // call parent constructor
    super(title, author, year);
    this.month = month;
  }
}

// Instantiate Magazine
const mag1 = new Magazine('Mag One', 'John Doe', 2018, 'Jan');

// Access values
console.log(mag1);
console.log(mag1.getSummary()); // everything gets inherited from the super class as long as not same function is in subclass
