import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Card2ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffDBFEF9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              "https://images.pexels.com/photos/3204950/pexels-photo-3204950.jpeg?auto=compress&cs=tinysrgb&w=600",
              width: MediaQuery.of(context).size.width / 4,
              height: 90,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Thailand",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("10 nigths for two/all inclusive"),
                Text(
                  "\$/ 245.50",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    "4.0",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
