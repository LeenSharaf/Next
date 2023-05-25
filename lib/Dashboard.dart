import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_product.dart';
import 'profile/add_delete.dart';
import 'profile/Product.dart';
import 'profile/main_prod.dart';
import 'profile/show_pro.dart';

 class GridDashboard extends StatefulWidget {
  @override
  GridState createState() => new GridState();
}

class GridState extends State<GridDashboard> {
  void navigateToPage(String title) {
  // Handle navigation based on the item's title
  if (title == "Calendar") {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => CalendarPage()),
    // );
  } else if (title == "add") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddProductPage()),
    );
  } else if (title == "Locations") {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => ItemListPage()),
    // );
  }
  else if (title == "Products") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Products()),
    );
  }
  else if (title == "Update") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UpdatePage()),
    );
  }
  // Add more conditions for other items/pages
}

 @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    int index=0;
    
    var color = 0xFF03A9F4;
    return Flexible(
      child: GridView.count(
        
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
    onTap: () {
      // Handle the onTap event for each item
      navigateToPage(data.title);
    },
            
            
            child: Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          );
          }).toList())
          
    );
  }
     

  Items item1 = new Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "lib/images/calendar.png");

  Items item2 = new Items(
    title: "add",
    subtitle: "Add New Product",
    event: "4 Items",
    img: "lib/images/add.png",
  );
  Items item3 = new Items(
    title: "Locations",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "lib/images/map.png",
  );
  Items item4 = new Items(
    title: "Products",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "lib/images/festival.png",
  );
  Items item5 = new Items(
    title: "Update",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "lib/images/todo.png",
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "lib/images/setting.png",
  );

 
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({required this.title,required this.subtitle,required this.event,required this.img});
}

