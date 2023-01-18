import 'package:flutter/material.dart';
import 'package:intern_login_page/views/widgets/productbox.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 50,
            // width: 300,
            color: Color.fromARGB(255, 234, 181, 23),
            child: ListTile(
              leading: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mobile & Computer Accessories',
                    // overflow: TextOverflow.clip,
                    textScaleFactor: 1,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
          ),
          ProductBox(),
        ],
      )),
    );
  }
}
