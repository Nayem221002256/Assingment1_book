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
