import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData(brightness: Brightness.dark), home: CounterWidget());
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Simple  Counter'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => setState(() {
                          _counter -= 1;
                        }),
                    icon: Icon(Icons.remove)),
                Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        '$_counter',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                IconButton(
                    onPressed: () => setState(() {
                          _counter += 1;
                        }),
                    icon: Icon(Icons.add))
              ],
            ),
          ),
        ));
  }
}
