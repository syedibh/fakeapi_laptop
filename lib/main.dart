import 'package:fakeapi/screens/store_home_page.dart';
import 'package:fakeapi/screens/online_card.dart';
import 'package:fakeapi/screens/layout.dart';
import 'package:flutter/material.dart';
import 'package:fakeapi/screens/mainmenu.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: widget.title,
      home: StoreHomePage(),
      //home: OnlineCard(),
      //  home:mainmenu()
      );
  }
}
