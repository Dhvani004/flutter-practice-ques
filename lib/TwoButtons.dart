import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            color: Colors.amber[100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(Text("Login button pressed"));
                },
                child: Text("Login"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(Text("Register button pressed"));
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
