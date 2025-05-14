import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile picture
            CircleAvatar(
              radius: 60,
              backgroundImage:
                  AssetImage('assets/images/my_photo.png'), // Add your image
            ),
            SizedBox(height: 16),
            // Name
            Text(
              "Malak Omar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Title
            Text(
              "AI & DS ",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            // Info cards
            Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("malak@gmail.com"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("+962787788"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.location_city),
                title: Text("Amman, Jordan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
