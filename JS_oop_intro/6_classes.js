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

  getAge() {
    const years = new Date().getFullYear() - this.year;
    return `${this.title} is ${years} old`;
  }

  revise(newYear) {
    this.year = newYear;
    this.revised = true;
  }

  // static method to be callable without instatiating a prototype (like class method in ruby)
  static topBookStore() {
    return 'Barnes & Noble';
  }
}

// instantiate Object
const book1 = new Book('Book One', 'John Doe', 2013);

console.log(book1);
console.log(book1.getSummary());
book1.revise(2019);
console.log(book1.year);

// run a static mehthod
// console.log(book1.topBookStore()); --> is not a function
console.log(Book.topBookStore());
