import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Gallery")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildImage("https://picsum.photos/200"),
                buildImage("https://picsum.photos/201"),
                buildImage("https://picsum.photos/202")
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget buildImage(String url) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
