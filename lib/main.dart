import 'package:flutter/material.dart';
import 'package:travelappg9/pages/home_page.dart';
import 'package:travelappg9/pages/welcome_page.dart';
import 'package:travelappg9/widgets/welcome_widget.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    home: WelcomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
