import 'package:flutter/material.dart';

import '../screens/productdetails.dart';

class ProductBox extends StatefulWidget {
  const ProductBox({Key? key}) : super(key: key);

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  List productList = [
    {
      "image": "assets/headphone.jpg",
      "name": "Wireless Headphone",
      "price": "\$150.00",
      "count": 0,
    },
    {
      "image": "assets/charger.png",
      "name": "Apple Charger",
      "price": "\$250.00",
      "count": 0,
    },
    {
      "image": "assets/mouse.jpg",
      "name": "Wireless Mouse",
      "price": "\$24.00",
      "count": 0,
    },
    {
      "image": "assets/keyboard.jpg",
      "name": "Neon Keyboard",
      "price": "\$22.00",
      "count": 0,
    },
    {
      "image": "assets/woofer.jpg",
      "name": "JVC Subwoofer",
      "price": "\$200.00",
      "count": 0,
    },
    {
      "image": "assets/usb.jpg",
      "name": "USB",
      "price": "\$10.00",
      "count": 0,
    },
  ];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 13, left: 17, right: 17),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductDetails()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.7, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    productList[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.5,
                                ),
                                Flexible(
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                productList[index]['price'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.orange),
                              ),
                              Card(
                                elevation: 5,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    width: 100,
                                    height: 22,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (productList[index]['count'] >
                                                  0) {
                                                productList[index]['count']--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            color: Colors.orange,
                                            child: Center(
                                                child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                              color: Colors.white,
                                              child: Center(
                                                  child: Text(
                                                productList[index]['count']
                                                    .toString(),
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))),
                                        ),
                                        InkWell(
                                          onTap: (() {
                                            setState(() {
                                              productList[index]['count']++;
                                            });
                                          }),
                                          child: Container(
                                            color: Colors.orange,
                                            child: Center(
                                                child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: (MediaQuery.of(context).size.height * 0.2) - 25,
                      width: (MediaQuery.of(context).size.height * 0.2) - 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            productList[index]['image'],
                          ),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(width: 0.7, color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
