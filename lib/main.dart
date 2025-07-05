import 'package:flutter/material.dart';

void main() {
  runApp(ContactList());
}

class ContactList extends StatelessWidget {
  final List<String> contacts = [
    'Hamza',
    'Naseem',
    'Talha',
    'Usman',
    'Asad',
    'Ali',
    'Ahmad',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contact List",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Contact List",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.lightBlue,
          actions: [
            IconButton(
              icon: Icon(Icons.search_rounded, size: 40, color: Colors.white),
              onPressed: () {
                // TODO: add search logic if needed
              },
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white70,
          ),
          child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2019/08/11/18/59/icon-4399701_1280.png',
                  ),
                ),
                title: Text(contacts[index]),
                subtitle: Text("Good Luck"),
                trailing: Icon(Icons.call),
              );
            },
          ),
        ),
      ),
    );
  }
}
