import 'contact.dart';

class ContactManager {
  List<Contact> contacts = [];

  void add_Contact(Contact contact) {
    contacts.add(contact);
    print("Contact added: ${contact.name}");
  }

  void remove_Contact(String name) {
    contacts.removeWhere((contact) => contact.name == name);
    print("Contact removed: $name");
  }

  void update_Contact(
    String name, {
    String? newPhone,
    String? newEmail,
    String? newAddress,
  }) {
    for (var contact in contacts) {
      if (contact.name == name) {
        if (newPhone != null) contact.phone = newPhone;
        if (newEmail != null) contact.email = newEmail;
        if (newAddress != null) contact.address = newAddress;
        print("Contact updated: $name");
        return;
      }
    }
    print("Contact not found: $name");
  }

  void search_Contact(String name) {
    for (var contact in contacts) {
      if (contact.name.toLowerCase().contains(name.toLowerCase())) {
        contact.display();
        return;
      }
    }
    print("Contact not found: $name");
  }

  void list_Contacts() {
    if (contacts.isEmpty) {
      print("No contacts available.");
    } else {
      print("Contact List:");
      for (var contact in contacts) {
        contact.display();
      }
    }
  }
}
