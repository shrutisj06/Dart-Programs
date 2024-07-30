import 'dart:io';

class Contact {
  String name;
  String phoneNumber;
  String email;

  Contact(this.name, this.phoneNumber, this.email);

  @override
  String toString() {
    return 'Name: $name, Phone: $phoneNumber, Email: $email';
  }
}

class User {
  String username;
  String password;

  User(this.username, this.password);
}

class Authorisation {
  List<User> users = [];

  void addUser(String username, String password) {
    users.add(User(username, password));
    print('User is added successfully.');
  }

  bool valid(String username, String password) {
    for (var user in users) {
      if (user.username == username && user.password == password) {
        return true;
      }
    }
    return false;
  }
}



class AddressBook {
  List<Contact> contacts = [];




  void addContact(String name, String phoneNumber, String email) {
    if (validNumber(phoneNumber))
      {contacts.add(Contact(name, phoneNumber, email));
    print('Contact is added successfully.');
  } else {
  print('Invalid phone number.');
  }
}
  bool validNumber(String phoneNumber) {
    if (phoneNumber[0] != '+') {
      return false;
    }
    List splittingbyspace = phoneNumber.split(' ');
    String countryCode = splittingbyspace[0];
    String number = splittingbyspace[1];
    if (countryCode.length != 3 || number.length != 10) {
      return false;
    }
    //('0' <= phoneNumber[i]) && (phoneNumber[i] <= '9')
    for (int i = 1; i <countryCode.length; i++) {
      if (!'0123456789'.contains(countryCode[i])) {
        return false;
      }
     }
    for (int i = 1; i <number.length; i++) {
      if (!'0123456789'.contains(number[i])) {
        return false;
      }
    }
    return true;
  }


  void displayContacts() {
    if (contacts.isEmpty) {
      print('No contacts are available.');
    } else {
      for (var contact in contacts) {
        print(contact);
      }
    }
  }



  void searchContact(String name) {
    bool found = false;
    for (var contact in contacts) {
      if (contact.name.contains(name)) {
        print(contact);
        found = true;
      }
    }
    if (!found) {
      print('No contacts found.');
    }
  }

  void deleteContact(String name) {
    bool found = false;
    for (int i = 0; i < contacts.length; i++) {
      if (contacts[i].name == name) {
        contacts.removeAt(i);
        print('Contact deleted.');
        found = true;
        break;
      }
    }
    if (!found) {
      print('Contact not found.');
    }
  }
}

void main() {
  String username;
  String password;
  String choice;
  String name;
  String phoneNumber;
  String email;
  String searchName;
  String deleteName;
  final authService = Authorisation();
  final addressBook = AddressBook();

  authService.addUser('shruti', 'shruti');

  stdout.write('Enter username: ');
  username = stdin.readLineSync()!;
  stdout.write('Enter password: ');
   password = stdin.readLineSync()!;

  if (!authService.valid(username, password)) {
    print('Authentication failed!');
    return;
  }

  while (true) {
    print('1. Add Contact');
    print('2. Display Contacts');
    print('3. Search Contacts');
    print('4. Delete Contact');
    print('5. Exit');
    stdout.write('Choose an option: ');
    final choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        stdout.write('Enter name: ');
        final name = stdin.readLineSync()!;
        stdout.write('Enter phone number: ');
        print('It must be in the format +__ __________');
        final phoneNumber = stdin.readLineSync()!;
        stdout.write('Enter email: ');
        final email = stdin.readLineSync()!;
        addressBook.addContact(name, phoneNumber, email);
        break;
      case '2':
        addressBook.displayContacts();
        break;
      case '3':
        stdout.write('Enter name to search: ');
        final searchName = stdin.readLineSync()!;
        addressBook.searchContact(searchName);
        break;
      case '4':
        stdout.write('Enter name to delete: ');
        final deleteName = stdin.readLineSync()!;
        addressBook.deleteContact(deleteName);
        break;
      case '5':
        return;
      default:
        print('Invalid');
    }
  }
}