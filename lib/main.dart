import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;
  void tambah() {
    setState(() {
      nilai++;
    });
  }

  void kurang() {
    setState(() {
      nilai--;
    });
  }

  void reset() {
    setState(() {
      nilai = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Belajar Stateful')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                nilai.toString(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: tambah,
                    child: Text('+'),
                  ),
                  FloatingActionButton(
                    onPressed: reset,
                    child: Text('R'),
                  ),
                  FloatingActionButton(
                    onPressed: kurang,
                    child: Text('-'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
