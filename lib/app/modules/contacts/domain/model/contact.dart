class ContactList {
  final List<Contact> contacts;

  ContactList(
    this.contacts,
  );
}

class Contact {
  final String url;
  final String contactMean;
  final String iconPath;

  Contact({
    required this.url,
    required this.contactMean,
    required this.iconPath,
  });
}
