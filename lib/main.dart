import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Card'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.network(
                    "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Umbrella for Sale", // Memperbaiki ejaan dari "Umberla" menjadi "Umbrella"
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("200 bought this")
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("4.5"),
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
