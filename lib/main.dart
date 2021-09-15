import 'package:clip_path_demo/FifthClipPath.dart';
import 'package:clip_path_demo/FirstClipPath.dart';
import 'package:clip_path_demo/FourthClipPath.dart';
import 'package:clip_path_demo/SecondClipPath.dart';
import 'package:clip_path_demo/ThirdClipPath.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget myBox({CustomClipper<Path>? clipper}) => Container(
        color: Colors.yellowAccent,
        child: ClipPath(
          clipper: clipper,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.cyan,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              myBox(clipper: TopClipPath()),
              myBox(clipper: SecondClipPath()),
              myBox(clipper: ThirdClipPath()),
              myBox(clipper: FourthClipPath()),
              myBox(clipper: FifthClipPath()),
            ],
          ),
        ),
      ),
    );
  }
}
