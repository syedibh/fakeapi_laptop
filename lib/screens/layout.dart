import 'package:flutter/material.dart';

void main() {
  runApp(MyAppL());
}

class MyAppL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(

          title: Text('বিভিন্ন রঙের 3 টি Row'),
        ),
        body: Column(
          children: [
            buildColoredRow(Colors.red),
            buildColoredRow(Colors.green),
            buildColoredRow(Colors.blue),
          ],
        ),
      );

  }

  Widget buildColoredRow(Color color) {
    return Container(
      color: color,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'এটি হলো',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(width: 8.0),
          Icon(
            Icons.star,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}