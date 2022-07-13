import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

///Creating a MyApp class derived from StatelessWidget
class MyApp extends StatelessWidget {
  ///Creating a MyApp class constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hey_there'),
    );
  }
}

///Creating a MyHomePage class derived from StatefulWidget
class MyHomePage extends StatefulWidget {
  ///Creating a MyHomePage class constructor
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  ///Creating a title variable
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();

  Color _color = const Color(0xFFFFFFFF);

  void setColor() {
    setState(
      () {
        _color = Color.fromRGBO(
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextDouble(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: InkWell(
        onTap: setColor,
        child: Container(
          color: _color,
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
