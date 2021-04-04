import 'package:flutter/material.dart';

void main() => runApp(MyList());

class Product {
  int id;
  String name;
  double price;
  String picture;

  Product(
    int id,
    String name,
    double price,
      String picture,
  ) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.picture = picture;
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  //List<String> myProduct = [ 'ยำกุ้งสด', 'ยำรวมทะเล', ];
  List<Product> products = [
    Product(1, "ยำกุ้งสด", 100, "https://images.pexels.com/photos/1893556/pexels-photo-1893556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Product(2, "ยำรวมทะเล", 300, "https://images.pexels.com/photos/1824353/pexels-photo-1824353.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Product(3, "ส้มตำปูปร้า", 40, "https://images.pexels.com/photos/3662126/pexels-photo-3662126.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Product(4, "ยำคอหมูย่าง", 80, "https://images.pexels.com/photos/3662189/pexels-photo-3662189.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Product(5, "ส้มตำข้าวโพด", 50, "https://images.pexels.com/photos/2750558/pexels-photo-2750558.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Product(6, "ส้มตำรวมทะเล", 100, "https://images.pexels.com/photos/923182/pexels-photo-923182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Product(7, "ข้าวเหนียว", 10, "https://images.pexels.com/photos/3872370/pexels-photo-3872370.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Product(8, "ขนมจีน", 10, "https://images.pexels.com/photos/4039006/pexels-photo-4039006.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Manu'),
        ),
        body: Column(
          // children: myProduct.map((prd) => Text(prd) ).toList()
          children: products.map((p) {
            return ListTile(
              //leading: Icon(Icons.local_dining),
              //leading: Image.asset('images/download.jpg'),
              leading: Image.network(p.picture),
              title: Text(p.name),
              subtitle: Text("Price : ฿" + p.price.toString()),
            );
          }).toList(),
        ),
      ),
    );
  }
}
