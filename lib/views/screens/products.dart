import 'package:flutter/material.dart';
import 'package:intern_login_page/views/screens/productdetails.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Mobile & Computer Accessories',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(150.0),
              border: Border.all(color: Colors.white),
            ),
            child: Center(
                child: Icon(
              size: 13,
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Icon(
              size: 24,
              Icons.shopping_bag_outlined,
              color: Colors.white,
            )),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
              child: ProductBox()),
        ],
      )),
    );
  }
}
