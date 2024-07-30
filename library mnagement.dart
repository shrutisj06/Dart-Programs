import 'dart:io';

void main() {
  Book book1= Book('sss','rowling',345,true);
  Book book2= Book('shruti','jain',333,true);
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);

  while (true) {
    print('Welcome to the library');
    print('1. Create an account');
    print('2. Login');
    print('3. Exit');
    print('Select an option to continue');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        createAccount(library);
        break;
      case 2:
        login(library);
        break;
      case 3:
        exit(0);
      default:
        print('Invalid option. Please try again.');
    }
  }
}

class Book {
  String title;
  String author;
  int ISBN;
  bool availability;

  Book(this.title, this.author, this.ISBN, this.availability);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book is added successfully');
  }

  void listAllBooks() {
    print('Available books in the library are:');
    for (int i = 0; i < books.length; i++) {
      var book = books[i];
      print('Title: ${book.title}, Author: ${book.author}, ISBN: ${book.ISBN}, Available: ${book.availability}');
    }
  }

  void removeBook(int ISBN) {
    List<Book> updatedBooks = [];
    bool removed = false;
    for (int i = 0; i < books.length; i++) {
      var book = books[i];
      if (book.ISBN != ISBN) {
        updatedBooks.add(book);
      } else {
        removed = true;
      }
    }
    books = updatedBooks;
    if (removed) {
      print('Book is removed successfully');
    } else {
      print('Book not found');
    }
  }

  void searchBooks(String title, String author) {
    bool found = false;
    for (int i = 0; i < books.length; i++) {
      var book = books[i];
      if (book.title == title && book.author == author) {
        print('Book is available with ISBN: ${book.ISBN}');
        found = true;
        break;
      }
    }
    if (!found) {
      print('Book not found');
    }
  }

  void borrowBook(int ISBN) {
    for (int i = 0; i < books.length; i++) {
      var book = books[i];
      if (book.ISBN == ISBN && book.availability) {
        book.availability = false;
        print('You have borrowed the book: ${book.title}');
        return;
      }
    }
    print('Book is not available for borrowing');
  }

  void returnBook(int ISBN) {
    for (int i = 0; i < books.length; i++) {
      var book = books[i];
      if (book.ISBN == ISBN && !book.availability) {
        book.availability = true;
        print('You have returned the book: ${book.title}');
        return;
      }
    }
    print('Book not found in your borrowed list');
  }
}

class Member {
  String username;
  String password;

  Member(this.username, this.password);
}

class Librarian {
  String username;
  String password;

  Librarian(this.username, this.password);
}

List<Member> members = [];
List<Librarian> librarians = [];

void createAccount(Library library) {
  print('Select account type:');
  print('1. Member');
  print('2. Librarian');
  int accountType = int.parse(stdin.readLineSync()!);

  print('Enter username:');
  String username = stdin.readLineSync()!;
  print('Enter password:');
  String password = stdin.readLineSync()!;

  switch (accountType) {
    case 1:
      if (!isMemberExists(username)) {
        members.add(Member(username, password));
        print('Member account created successfully');
        memberMenu(library);
      } else {
        print('Username already exists. Please try a different username.');
      }
      break;
    case 2:
      if (!isLibrarianExists(username)) {
        librarians.add(Librarian(username, password));
        print('Librarian account created successfully');
        librarianMenu(library);
      } else {
        print('Username already exists. Please try a different username.');
      }
      break;
    default:
      print('Invalid account type. Please try again.');
  }
}

bool isMemberExists(String username) {
  for (var member in members) {
    if (member.username == username) {
      return true;
    }
  }
  return false;
}

bool isLibrarianExists(String username) {
  for (var librarian in librarians) {
    if (librarian.username == username) {
      return true;
    }
  }
  return false;
}

void login(Library library) {
  print('Enter username:');
  String username = stdin.readLineSync()!;
  print('Enter password:');
  String password = stdin.readLineSync()!;

  if (authenticateMember(username, password)) {
    print('Member logged in successfully');
    memberMenu(library);
  } else if (authenticateLibrarian(username, password)) {
    print('Librarian logged in successfully');
    librarianMenu(library);
  } else {
    print('Invalid username or password. Please try again.');
  }
}

bool authenticateMember(String username, String password) {
  for (var member in members) {
    if (member.username == username && member.password == password) {
      return true;
    }
  }
  return false;
}

bool authenticateLibrarian(String username, String password) {
  for (var librarian in librarians) {
    if (librarian.username == username && librarian.password == password) {
      return true;
    }
  }
  return false;
}

void memberMenu(Library library) {
  while (true) {
    print('Member Menu:');
    print('1. List all books');
    print('2. Search books');
    print('3. Borrow a book');
    print('4. Return a book');
    print('5. Logout');
    print('Select an option to continue');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        library.listAllBooks();
        break;
      case 2:
        print('Enter book title:');
        String title = stdin.readLineSync()!;
        print('Enter book author:');
        String author = stdin.readLineSync()!;
        library.searchBooks(title, author);
        break;
      case 3:
        print('Enter book ISBN to borrow:');
        int ISBN = int.parse(stdin.readLineSync()!);
        library.borrowBook(ISBN);
        break;
      case 4:
        print('Enter book ISBN to return:');
        int ISBN = int.parse(stdin.readLineSync()!);
        library.returnBook(ISBN);
        break;
      case 5:
        print('Logging out...');
        return;
      default:
        print('Invalid option. Please try again.');
    }
  }
}

void librarianMenu(Library library) {
  while (true) {
    print('Librarian Menu:');
    print('1. Add a book');
    print('2. List all books');
    print('3. Remove a book');
    print('4. Search books');
    print('5. Logout');
    print('Select an option to continue');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Enter book title:');
        String title = stdin.readLineSync()!;
        print('Enter book author:');
        String author = stdin.readLineSync()!;
        print('Enter book ISBN:');
        int ISBN = int.parse(stdin.readLineSync()!);
        library.addBook(Book(title, author, ISBN, true));
        break;
      case 2:
        library.listAllBooks();
        break;
      case 3:
        print('Enter book ISBN to remove:');
        int ISBN = int.parse(stdin.readLineSync()!);
        library.removeBook(ISBN);
        break;
      case 4:
        print('Enter book title:');
        String title = stdin.readLineSync()!;
        print('Enter book author:');
        String author = stdin.readLineSync()!;
        library.searchBooks(title, author);
        break;
        case 5:
        print('Logging out.');
        return;
      default:
        print('Invalid option. Please try again.');
    }
  }
}
