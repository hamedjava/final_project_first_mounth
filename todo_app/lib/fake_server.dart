class FakeServer {
  static const List<String> emails = <String>[
    'hamed@gmail.com',
    'saed@yahoo.com',
    'hamid@gmail.com',
    'mohammad@gamil.com',
    'ramin@yahoo.com',
  ];
  List<String> getNameFromFakeServer() {
    List<String> _ = <String>[];
    int i = 0;
    while (!emails.isEmpty) {
      _[i] = emails[i];
      i++;
    }
    return _;
  }
}
