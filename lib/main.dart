import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Task 1: Container with Column, Texts, SizedBox
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.lightBlue[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Flutter!',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'This is a simple layout using basic widgets.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),

                // Task 2: Image, ElevatedButton, TextButton
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/my_photo.png', // Replace with your image name
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // does nothing for now
                        },
                        child: Text('Top Button'),
                      ),
                      TextButton(
                        onPressed: () {
                          // does nothing
                        },
                        child: Text('Text Button'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
