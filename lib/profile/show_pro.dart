




import 'package:aklati_2/add_product.dart';
import 'package:flutter/material.dart';

import 'Product.dart';


class Products extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Products>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
        
        title: Text('All Product',
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
     
      
    );
  }
}






