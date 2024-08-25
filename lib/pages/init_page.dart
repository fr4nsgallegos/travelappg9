import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg9/pages/home_page.dart';
import 'package:travelappg9/pages/welcome_page.dart';

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool showWelcome = true;

  Future<void> getYaInicio() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    bool auxYaInicio = _prefs.getBool("yaInicio") ?? false;
    auxYaInicio ? showWelcome = false : showWelcome = true;
    setState(() {});
  }

  @override
  void initState() {
    getYaInicio();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return showWelcome ? WelcomePage() : HomePage();
  }
}
