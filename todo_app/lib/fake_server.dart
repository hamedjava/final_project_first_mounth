class FakeServer {
  final String email;
  const FakeServer({required this.email});
  static List<String> emails = <String>[
    'hamed@gmail.com',
    'saed@yahoo.com',
    'hamid@gmail.com',
    'mohammad@gamil.com',
    'ramin@yahoo.com',
  ];

  static addItemToList(String email) {
    emails.add(email);
  }

  static removeItemFromList(int index) {
    emails..removeAt(index);
    showEmailsItems();
  }

  static editItemFromList(int index, String email) {
    if (emails[index] == index) {
      emails.insert(index, email);
      showEmailsItems();
    }
  }

  static List<String> showEmailsItems() {
    while (!emails.isEmpty) {
      return emails;
    }
    return emails;
  }
}
