class Contact {
  String name;
  String phone;
  String email;
  String address;

  Contact({
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
  });

  void display() {
    print("Name: $name");
    print("Phone: $phone");
    print("Email: $email");
    print("Address: $address");
  }
}
