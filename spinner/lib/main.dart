import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final spinner = SpinKitFadingCircle(
    color: Colors.yellow,
    size: 50.0,
    duration: Duration(milliseconds: 1000),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: unnecessary_null_comparison
        child: spinner,
      ),
      backgroundColor: Colors.red,
    );
  }
}
