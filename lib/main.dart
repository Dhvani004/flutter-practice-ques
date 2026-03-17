import 'package:flutter/material.dart';
import 'Profilecard.dart';
import 'TwoButtons.dart';
import 'imageGallery.dart';
import 'productCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(context, 'Profile Card UI', Screen1()),
            buildButton(context, 'Two Buttons Layout', Screen2()),
            buildButton(context, 'Image Gallery Grid', Screen3()),
            buildButton(context, 'Simple Product Card', Screen4()),
            buildButton(context, 'Simple Login Screen', Screen5()),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String text, Widget screen) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(text),
      ),
    );
  }
}


class Screen5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hii")),
      body: Center(child: Text("This is Screen 5")),
    );
  }
}
