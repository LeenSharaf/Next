












import 'package:flutter/material.dart';

class Product {
  String image;
  String name;
  double price;
  int amount;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.amount,
  });
}

class UpdatePage extends StatefulWidget {
  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  List<Product> products = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'All Product',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(30),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          childAspectRatio: 0.8,
        ),
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
            child: GridTile(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProductScreen(
                                product: products[index],
                                onUpdate: (updatedProduct) {
                                  setState(() {
                                    products[index] = updatedProduct;
                                  });
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Delete Product'),
                                content:
                                    Text('Are you sure you want to delete this product?'),
                                actions: [
                                  TextButton(
                                    child: Text('Cancel'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Delete'),
                                    onPressed: () {
                                      setState(() {
                                        products.removeAt(index);
                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
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
      ),
    );
  }
}

class EditProductScreen extends StatefulWidget {
  final Product product;
  final Function(Product) onUpdate;

  EditProductScreen({required this.product, required this.onUpdate});

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.product.name;
    _priceController.text = widget.product.price.toString();
    _amountController.text = widget.product.amount.toString();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: _priceController,
              decoration: InputDecoration(
                labelText: 'Price',
              ),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.product.name = _nameController.text;
                  widget.product.price = double.parse(_priceController.text);
                  widget.product.amount = int.parse(_amountController.text);
                });
                widget.onUpdate(widget.product);
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}




 





