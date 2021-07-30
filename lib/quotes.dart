import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
final Color darkBlue = Color.fromARGB(255, 194, 112, 34);
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
        body: QuotesPage(),
      ),
    );
  }
}

class QuotesPage extends StatefulWidget {
  const QuotesPage({Key? key}) : super(key: key);

  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {


  var quotes=[
    "WORK HARD ",
    "BE Excpetinal ",
    "Always Be Happy "
  ];

  var idx = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(quotes[idx]),
          SizedBox(height: 100,),
          Divider(),
          InkWell(
            child: Text("NEXT"),
            onTap: (){
              setState(() {
                if (idx == quotes.length-1){
                  idx=0;
                }
                else {
                  idx++;
                }
              });
            },
          )

        ],
      ),
    );
  }
}

