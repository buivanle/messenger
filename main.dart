import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MessengerPage(),
    );
  }
}

class MessengerPage extends StatelessWidget {
  final List<Contact> contacts = [
    Contact('John Doe', 'assets/avatar1.png'),
    Contact('Jane Smith', 'assets/avatar2.png'),
    Contact('Mike Johnson', 'assets/avatar3.png'),
    Contact('Sarah Williams', 'assets/avatar4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(contact.avatar),
            ),
            title: Text(contact.name),
            onTap: () {
              // Navigate to chat screen
            },
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String avatar;

  Contact(this.name, this.avatar);
}
