 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Dashboard.dart';
import 'profile/show_order.dart';
 
 
 
 
 class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Company",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 67, 67, 68),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "lib/images/notification.png",
                    width: 24,
                  ),
                  onPressed: () {
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListProducts()),
    );
    },
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
GridDashboard(),
        ],
      ),
    );
  }
}
