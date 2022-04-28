import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  late int _turns;
  late double _value;

  @override
  void initState() {
    _turns = 0;
    _value = 0.0;
  }

  void _onChanged(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Slider(
                  value: _value,
                  onChanged: _onChanged,
                  min: 0.0,
                  max: 4.0,
                ),
                RotatedBox(
                  quarterTurns: _turns,
                  child: const Text('Hello World'),
                ),
                Container(
                    padding: const EdgeInsets.all(50.0),
                    decoration: const BoxDecoration(
                        gradient: RadialGradient(
                            colors: <Color>[Colors.red, Colors.yellow]))),
              ],
            ),
          )),
    );
  }
}
