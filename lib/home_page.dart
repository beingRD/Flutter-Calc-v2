import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int num1 = 2, num2 = 0;
  int res = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      int num1 = int.parse(t1.text);
      int num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      int num1 = int.parse(t1.text);
      int num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      int num1 = int.parse(t1.text);
      int num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      int num1 = int.parse(t1.text);
      int num2 = int.parse(t2.text);
      res = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    //final WordPair = prefix0.WordPair.random();
    return Scaffold(
      backgroundColor: Colors.black45,

      appBar: AppBar(
        title: Text("Standard Calc"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output: $res",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
                wordSpacing: 10.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter a number"),
              controller: t1,
              style: TextStyle( fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter a number"),
              controller: t2,
              style: TextStyle( fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "+",
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
                ),
                MaterialButton(
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.amber,
                      color: Colors.white,
                      wordSpacing: 10.0,
                    ),
                  ),
                  color: Colors.amber,
                  onPressed: doSub,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "X",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.amber,
                      color: Colors.white,
                      wordSpacing: 10.0,
                    ),
                  ),
                  color: Colors.amber,
                  onPressed: doMul,
                ),
                MaterialButton(
                  child: Text(
                    "/",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.amber,
                      color: Colors.white,
                      wordSpacing: 10.0,
                    ),
                  ),
                  color: Colors.amber,
                  onPressed: doDiv,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "Clear",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.amber,
                      color: Colors.white,
                      wordSpacing: 10.0,
                    ),
                  ),
                  color: Colors.amber,
                  onPressed: doClear,
                )
              ],
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
