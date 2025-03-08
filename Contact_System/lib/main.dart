import 'dart:io';
import 'contact.dart';
import 'contact_manager.dart';

void main() {
  ContactManager manager = ContactManager();

  while (true) {
    print("\nContact Management System");
    print("1️ Add Contact");
    print("2️ Remove Contact");
    print("3️ Update Contact");
    print("4️ Search Contact");
    print("5️ List All Contacts");
    print("6️ Exit");
    stdout.write("Choose an option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Phone: ");
        String phone = stdin.readLineSync()!;
        stdout.write("Email: ");
        String email = stdin.readLineSync()!;
        stdout.write("Address: ");
        String address = stdin.readLineSync()!;
        manager.add_Contact(
          Contact(name: name, phone: phone, email: email, address: address),
        );
        break;

      case "2":
        stdout.write("Enter name to remove: ");
        String name = stdin.readLineSync()!;
        manager.remove_Contact(name);
        break;

      case "3":
        stdout.write("Enter name to update: ");
        String name = stdin.readLineSync()!;
        stdout.write("New phone (leave empty to skip): ");
        String? phone = stdin.readLineSync();
        stdout.write("New email (leave empty to skip): ");
        String? email = stdin.readLineSync();
        stdout.write("New address (leave empty to skip): ");
        String? address = stdin.readLineSync();
        manager.update_Contact(
          name,
          newPhone: phone!.isEmpty ? null : phone,
          newEmail: email!.isEmpty ? null : email,
          newAddress: address!.isEmpty ? null : address,
        );
        break;

      case "4":
        stdout.write("Enter name to search: ");
        String name = stdin.readLineSync()!;
        manager.search_Contact(name);
        break;

      case "5":
        manager.list_Contacts();
        break;

      case "6":
        print("bye!");
        exit(0);

      default:
        print("Invalid choice, try again!");
    }
  }
}
