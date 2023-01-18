import 'package:flutter/material.dart';
import 'package:intern_login_page/views/widgets/disountcontainer.dart';
import 'package:intern_login_page/views/widgets/slider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Wireless Headphone',
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
            MySlider(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wireless Headphone",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$150.00',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, top: 3),
              child: Text(
                '⭐ 4.9 (120)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Colors",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 21, 130, 24),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 100,
                        height: 22,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              color: Colors.orange,
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                            Expanded(
                              child: Container(
                                  color: Colors.white,
                                  child: Center(
                                      child: Text(
                                    '01',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            Container(
                              color: Colors.orange,
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Featured Products",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.width * 0.355,
                child: DiscountWidget()),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
