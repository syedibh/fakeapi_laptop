import 'package:flutter/material.dart';
import 'package:fakeapi/screens/layout.dart';


class mainmenu extends StatelessWidget {
  const mainmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Menu'),
      ),
      body: //column(
        Container(
          height: 500,
          color: Colors.cyan,

        ),
  floatingActionButton: FloatingActionButton(
    onPressed: (){
      print('Click Start');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyAppL()),
      );
      //MyAppL();
      print('Click end');


    },
    child:
    Icon(Icons.add_call),
    backgroundColor: Colors.blueAccent,
    tooltip: ('Two Row'),


  ),
      //),

      );


  }
}
