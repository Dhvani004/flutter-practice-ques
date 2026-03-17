import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Card")),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            color: Colors.amber[100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.purple, width: 3),
                ),
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.person, size: 100, color: Colors.grey),
                ),
              ),

              SizedBox(height: 50),
              Text(
                "Dhvani Khandelwal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 8,),
              Text("Phone no. +91 9876543210",style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            ],
          ),
        ),
      ),
    );
  }
}
