


import 'package:flutter/material.dart';


import 'profile/nav.dart';
import 'profile/main_prod.dart';
import 'profile/show_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      //home:Products(),
    );
  }
}

// class MyHome extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHome>
//     with SingleTickerProviderStateMixin {

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
//           onPressed: () {},
//         ),
//         title: Text('Pickup',
//             style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 20.0,
//                 color: Color(0xFF545D68))),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search, color: Color(0xFF545D68)),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body :ProductGrid(),    );
//   }
// }