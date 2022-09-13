// ignore_for_file: prefer_const_constructors

import 'package:demo_daniele/components/base_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // La column-row-listView ed altri widget possono avere più figli -> children
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Widget come il Container possono averne solo uno
            Container(
              height: 200,
              width: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 8; i++)
                    FirstDanieleWidget(
                      stringDiDaniele: 'Stringa ',
                      danieleColor: Colors.blue,
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextButton(
                onPressed: () {
                  print("Buttone premuto");
                },
                child: Text("Premimi")),
          ],
        ),
      ),
    );
  }
}
