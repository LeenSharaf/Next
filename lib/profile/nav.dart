// ignore_for_file: prefer_const_constructors, prefer_final_fields, override_on_non_overriding_member

import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Home.dart';
import 'chat.dart';
import 'main_prod.dart';



class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 1;
  List<Widget> _children = [
    Home(),
     MyHome(),
         ChatWidget(),

  ];

  // @override
  // void initstate() {
  //   super.initState();
  //   _children = [
  //     Home(
        
  //     ),
      // User(
      //   username: widget.username,
      // ),
      // CartScreen(),
      // Home(username: widget.username),
      // User(
      //   username: widget.username,
      // )
  //   ];
  // }

  void onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //drawer: Sidebar(),
        body: Scaffold(
      body: _children[_index],
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.blue,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 9, 98, 172),
            padding: EdgeInsets.all(16),
            gap: 6,
            selectedIndex: _index,
            onTabChange: onTabTapped,
            tabs: const [
              GButton(
                icon: Icons.person,
                text: 'Home',
                textStyle: TextStyle(
                  fontFamily: 'Mulish-VariableFont',
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // GButton(
              //     icon: Icons.person,
              //     text: 'User',
              //     textStyle: TextStyle(
              //       fontFamily: 'Mulish-VariableFont',
              //       fontSize: 12,
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //     )),
              GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textStyle: TextStyle(
                    fontFamily: 'Mulish-VariableFont',
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              GButton(
                  icon: Icons.message,
                  text: 'Chats',
                  textStyle: TextStyle(
                    fontFamily: 'Mulish-VariableFont',
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              GButton(

                  icon: Icons.calendar_month_outlined,
                  text: 'Events',
                  textStyle: TextStyle(
                    fontFamily: 'Mulish-VariableFont',
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
