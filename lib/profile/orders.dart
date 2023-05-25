import 'package:flutter/material.dart';

class Product {
  final String image;
  final String name;
  final double price;
  final int amount;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.amount,
  });
}

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(
      image:
          "https://i0.wp.com/www.buildersbooklet.com/storage/2021/05/Examples-of-building-materials.png?resize=750%2C375&ssl=1",
      name: 'Product 1',
      price: 9.99,
      amount: 5,
    ),
    Product(
      image:
          "https://i0.wp.com/www.buildersbooklet.com/storage/2021/05/Examples-of-building-materials.png?resize=750%2C375&ssl=1",
      name: 'Product 2',
      price: 19.99,
      amount: 3,
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(30),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 8.0,
                spreadRadius: 4.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ListTile(
            leading: Image.network(
              products[index].image,
              fit: BoxFit.cover,
            ),
            title: Text(
              products[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price: \$${products[index].price.toStringAsFixed(2)}'),
                Text('Amount: ${products[index].amount}'),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                // Perform an action when the button is pressed
              },
              child: Text('Accept'),
            ),
          ),
        );
      },
    );
  }
}


