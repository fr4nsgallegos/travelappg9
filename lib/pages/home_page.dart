import 'package:flutter/material.dart';
import 'package:travelappg9/widgets/card2_item_widget.dart';
import 'package:travelappg9/widgets/card_lugar_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                "Drawer Header",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Confirguración"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Cerrar sesión"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
              color: Colors.cyan,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Discount Tour",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the best Tour",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
                "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor"),
            SizedBox(
              height: 8,
            ),
            Text(
              "Country",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardLugarWidget(),
                  CardLugarWidget(),
                  CardLugarWidget(),
                  CardLugarWidget(),
                  CardLugarWidget(),
                  CardLugarWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Card2ItemWidget(),
          ],
        ),
      ),
    );
  }
}
