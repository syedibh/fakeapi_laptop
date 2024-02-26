import 'package:flutter/material.dart';


class OnlineCard extends StatelessWidget {
  const OnlineCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Column(
        children: [
          // Row 1
          Container(
            color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    child: Center(
                      child: Text('Row 1, Column 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 50,
                    child: Center(
                      child: Text('Row 1, Column 2'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Row 2
          Container(
            color: Colors.yellow,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    height: 50,
                    child: Center(
                      child: Text('Row 2, Column 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    height: 50,
                    child: Center(
                      child: Text('Row 2, Column 2'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Row 3
          Container(
            color: Colors.teal,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.indigo,
                    height: 50,
                    child: Center(
                      child: Text('Row 3, Column 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    height: 50,
                    child: Center(
                      child: Text('Row 3, Column 2'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );

  }
}
