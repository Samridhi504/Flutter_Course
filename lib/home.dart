import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 29, 199, 46);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome To My App"),
          backgroundColor: Colors.black),
        body: Try(),
        ),
    );
  }
}
class Try extends StatelessWidget {
  const Try({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Version 2.0"),
          Divider(),
          Text("Version 2.0"),
          Text("Name: Hargun")
        ],
      ),
    );
  }
}
