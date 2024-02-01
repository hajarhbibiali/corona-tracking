import 'package:flutter/material.dart';
import 'package:healthcare/screens/welcome_screen.dart';
import 'package:uuid/uuid.dart';


void main() {
  String deviceUDID = Uuid().v4();

  runApp(MyApp(deviceUDID: deviceUDID));
}

class MyApp extends StatelessWidget {
  final String deviceUDID;

  const MyApp({Key? key, required this.deviceUDID}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
