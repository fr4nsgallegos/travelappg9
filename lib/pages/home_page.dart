import 'package:flutter/material.dart';

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
            Container(
              padding: EdgeInsets.all(14),
              height: 220,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.35),
                    BlendMode.srcATop,
                  ),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.35),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "NEW",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            ),
                          ),
                          Positioned(
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
