#Assignment1_Book

class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);

  // Method to calculate discounted price
  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  // Method to display info
  void display() {
    print("Title: $title");
    print("Author: $author");
    print("Price: $price");
  }
}

void main() {
  // Creating book objects
  Book book1 = Book("Smart Healthcare System", "Nayem Nur", 500);
  Book book2 = Book("Object-Oriented Programming Explained", " Al Amin Islam", 650);

  // Display book 1 info
  print("\n--- Book 1 Details ---");
  book1.display();
  print("Discounted Price (10%): ${book1.discountedPrice(10)}");

  // Display book 2 info
  print("\n--- Book 2 Details ---");
  book2.display();
  print("Discounted Price (15%): ${book2.discountedPrice(15)}");
}

#Assignment2_employee

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

// Manager subclass
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("\n--- Manager Details ---");
    print("Name: $name");
    print("Salary: $salary");
    print("Department: $department");
  }
}

// Developer subclass
class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print("\n--- Developer Details ---");
    print("Name: $name");
    print("Salary: $salary");
    print("Programming Language: $programmingLanguage");
  }
}

void main() {
  Manager m = Manager("Kamrul Hasan", 80000, "Sales");
  Developer d = Developer("Mahabub Tamim", 60000, "Flutter");

  m.displayInfo();
  d.displayInfo();
}


