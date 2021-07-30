import 'package:flutter/material.dart';

final Color orange = Color.fromARGB(255, 194, 112, 34);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: ColorChange()
    );
  }
}

class ColorChange extends StatefulWidget {
  const ColorChange({Key? key}) : super(key: key);

  @override
  _ColorChangeState createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {

  var backgroundColors = <String, List>{
    "Hargun": ["Black",Colors.black],
    "Sarthak": ["Orange", Colors.orange],
    "John": ["Green", Colors.green],
    "King": ["Blue", Colors.blue],
    "Daksh": ["Amber", Colors.amber],
    "Harshit": ["Red", Colors.red],
  };

  Color backgroundColor = Colors.cyanAccent;
  Color appBarBackgroundColor = Colors.cyan;

  getWidgets(){
    var widgets = <Widget>[];
    backgroundColors.forEach((key, value) {
      widgets.add(InkWell(
        child: Text(key+"  \t "+value[0], style: TextStyle(color: Colors.black, fontSize: 24),),
        onTap: (){
          setState(() {
            backgroundColor = value[1];
          });
        },
      ));
      widgets.add(Divider());
    });
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Hargun's APP"),
        backgroundColor: Colors.black,
      ),
      body:ListView(
          children:[
            Column(
              children: getWidgets(),

            ),
            Column(
                children: [Container(
                  height: height,
                  color: backgroundColor,

                ),
                ]
            ),

          ]
      ),
    );
  }
}