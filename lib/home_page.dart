import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var n1 = 0, n2 = 0, ans = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      ans = n1 + n2;
    });
  }

  void doSub() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      ans = n1 - n2;
    });
  }

  void doMul() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      ans = n1 * n2;
    });
  }

  void doDiv() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      ans = n1 ~/ n2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      ans = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding:
            EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output: $ans",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: doAdd, child: Text("+")),
                ElevatedButton(onPressed: doSub, child: Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: doMul, child: Text("*")),
                ElevatedButton(onPressed: doDiv, child: Text("/")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: doClear,
                  child: Text("Clear"),
                  color: Colors.redAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
