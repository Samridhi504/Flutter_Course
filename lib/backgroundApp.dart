import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow];
  var _index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            backgroundColor: _colors[_index % _colors.length],
            body: GestureDetector(
                onTap: () {
                  setState(() {
                    _index++;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height,
                      color: Colors.transparent,
                    ),
                  ],
                )
            )
        )
    );
  }
}
