




import 'package:aklati_2/add_product.dart';
import 'package:flutter/material.dart';

import 'Product.dart';


class MyHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        
        backgroundColor: Colors.blue,
        child: ListView(padding: EdgeInsets.zero, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(13),
                // child: Divider(
                //  color: Color.fromARGB(162, 248, 246, 246),
                //  height: 1,
                // )
              ),
              ListTile(
                onTap: () {
                  
                },
                leading: CircleAvatar(
                  // height: 34,
                  // width: 34,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                  ),
                ),
                title: Text(
                  "Name",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 24,top: 32,bottom: 16),child: 
            Text("Browse".toUpperCase(),style: TextStyle(color: 
            Color.fromARGB(255, 233, 221, 221),fontSize: 16),
            //textAlign: TextAlign.left
            ),),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {
                  
                },
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              
                 
            
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.input,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
        
        title: Text('Home',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ProductGrid(
        
         // SizedBox(height: 15.0),
          
          
             
        
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddProductPage()));
        },
      ),
      
    );
  }
}