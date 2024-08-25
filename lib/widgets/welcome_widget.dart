import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg9/pages/home_page.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  Color color;
  String pathAsset;
  bool showButton;

  WelcomeWidget({
    required this.title,
    required this.description,
    required this.color,
    required this.pathAsset,
    required this.showButton,
  });

  Future<void> setYaInicio() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setBool("yaInicio", true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width - 40,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/$pathAsset.png",
            height: MediaQuery.of(context).size.height / 5,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            height: 16,
          ),
          showButton
              ? ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                    );
                    setYaInicio();
                  },
                  child: Text("Vamos!!!"),
                )
              : Container(),
        ],
      ),
    );
  }
}
