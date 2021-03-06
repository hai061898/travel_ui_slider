import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel',
      theme: ThemeData(  
        primaryColor: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
