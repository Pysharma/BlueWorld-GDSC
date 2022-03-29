import 'package:clear1/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'screens/homepage.dart';


void main()
{
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' life below water ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(duration: 2, goToPage: homescreen(),)
    );
  }
}
