import 'package:flutter/material.dart';

class Product {
  final String image;
  final String name;
  final double price;
  final int amount;

  Product({required this.image,  required this.name, required this.price, required this.amount});
}

class ProductGrid extends StatelessWidget {
  final List<Product> products = [
    Product(
      image:       "https://i0.wp.com/www.buildersbooklet.com/storage/2021/05/Examples-of-building-materials.png?resize=750%2C375&ssl=1",

      name: 'Product 1',
      price: 9.99,
      amount: 5,
    ),
    Product(
      image: "https://i0.wp.com/www.buildersbooklet.com/storage/2021/05/Examples-of-building-materials.png?resize=750%2C375&ssl=1",

      name: 'Product 2',
      price: 19.99,
      amount: 3,
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
   
    return  GridView.builder(
      
          padding:EdgeInsets.all(30) ,

        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 0.8,  // Adjust the aspect ratio to increase card size
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10.0),  // Increase the margin for more spacing
            padding: EdgeInsets.all(10.0),  // Add padding inside the card
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),  // Increase border radius for rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 8.0,  // Increase the blur radius for a more prominent shadow
                  spreadRadius: 4.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: GridTile(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Image.network(
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    products[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Price: \$${products[index].price.toStringAsFixed(2)}'),
                  Text('Amount: ${products[index].amount}'),
                ],
              ),
            ),
          );
        },
      );


  }
}


















 