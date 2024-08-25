import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelappg9/pages/home_page.dart';
import 'package:travelappg9/pages/init_page.dart';
import 'package:travelappg9/pages/welcome_page.dart';
import 'package:travelappg9/widgets/welcome_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        // fontFamily: 'Poppins',
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: InitPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
