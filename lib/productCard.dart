import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Card")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productCard("Headphones","Rs. 7000"),
                productCard("Shoes","Rs. 4000"),
                productCard("Laptop","Rs. 50000"),
                productCard("Tablet","Rs. 20000"),
                productCard("Watch","Rs. 10000"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                productCard("Camera","Rs. 15000"),
                productCard("Smartphone","Rs. 30000"),
                productCard("Tablet","Rs. 20000"),
                productCard("Watch","Rs. 10000"),
                productCard("Headphones","Rs. 7000"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard(String name, String price) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 170,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Image.network(
                "https://picsum.photos/200",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(price),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                print("$name added to cart");
              },
              child: Text("Buy"),
            ),
          ],
        ),
      ),
    );
  }
}
