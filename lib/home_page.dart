import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int num1 = 2, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      int num1 = int.parse(t1.text);
      int num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final WordPair = prefix0.WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Calc Boyzz"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output: $sum",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
                wordSpacing: 10.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter a number"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter a number"),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            MaterialButton(
              child: Text(
                "Add",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.amber,
                  color: Colors.white,
                  wordSpacing: 10.0,
                ),
              ),
              color: Colors.amber,
              onPressed: doAdd,
            )

            /* TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter a number"),
              )*/
          ],
        ),
      ),
    );
  }
}
