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
            height: 50,
            color: Colors.orange,
            child: ListTile(
              leading: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                    child: Icon(
                  size: 15,
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                )),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Mobile & Computer Accessories',
                      textScaleFactor: 1,
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
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
