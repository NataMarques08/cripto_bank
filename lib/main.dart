import 'package:flutter/material.dart';

import 'screens/get_started_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue 
      ),
      home: const GetStartedScreen(),
  ));
}


