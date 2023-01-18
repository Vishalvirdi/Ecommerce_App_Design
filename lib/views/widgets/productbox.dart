import 'package:flutter/material.dart';

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
      "price": "\$150.00"
    },
    {
      "image": "assets/charger.png",
      "name": "Apple Charger",
      "price": "\$250.00"
    },
    {
      "image": "assets/mouse.jpg",
      "name": "Wireless Mouse",
      "price": "\$24.00",
    },
    {
      "image": "assets/keyboard.jpg",
      "name": "Neon Keyboard",
      "price": "\$22.00"
    },
    {
      "image": "assets/woofer.jpg",
      "name": "JVC Subwoofer",
      "price": "\$200.00"
    },
    {
      "image": "assets/usb.jpg",
      "name": "USB",
      "price": "\$10.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 13, left: 17, right: 17),
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.575,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productList[index]['name'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        SizedBox(
                          height: 2.5,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(fontSize: 13.8),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              productList[index]['price'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.orange),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Card(
                              elevation: 5,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  width: 100,
                                  height: 22,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
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
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          productList[index]['image'],
                        ),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
