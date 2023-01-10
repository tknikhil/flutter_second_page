import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_screen/second_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent),
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SecondPage(),
  ));
}

