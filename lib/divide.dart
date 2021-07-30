import 'package:flutter/material.dart';

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {


  var backgroundColors = <String, List>{
    "Hargun": ["Black",Colors.black],
    "Harjas": ["Green",Colors.green],
    "Palak": ["Blue",Colors.blue],
    "Pahul": ["Yellow",Colors.yellow],
    "Arman": ["White",Colors.white70],
    "Aarushi": ["Pink",Colors.pink],
    "Daksh": ["Indigo",Colors.indigo],
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
      body: ListView(
        children: [
            Column(
          children: getWidgets(),
          ),
            Column(
            children:[Container(
                height: height,
              color: backgroundColor,
            ) ,
    ]
    )],
      ),
    );
  }

  }
