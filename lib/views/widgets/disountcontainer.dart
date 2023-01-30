import 'package:flutter/material.dart';

class DiscountWidget extends StatefulWidget {
  DiscountWidget({Key? key}) : super(key: key);

  @override
  State<DiscountWidget> createState() => _DiscountWidgetState();
}

class _DiscountWidgetState extends State<DiscountWidget> {
  List imageList = [
    {
      "image": "assets/watch.jpg",
      "name": "Watches",
      "discount": "-22%",
      "price": "\$78.00"
    },
    {
      "image": "assets/shoes.jpg",
      "name": "Shoes",
      "discount": "-15%",
      "price": "\$85.00"
    },
    {
      "image": "assets/toys.jpg",
      "name": "Toys",
      "discount": "-7%",
      "price": "\$135.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 20,
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: imageList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.285,
              width: MediaQuery.of(context).size.width * .285,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.27,
                    width: MediaQuery.of(context).size.width * 0.285,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          imageList[index]["image"],
                        ),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(width: 0.7, color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, right: 8),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 11,
                        ),
                        backgroundColor: Colors.orange,
                        radius: 9,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 15,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          imageList[index]["discount"],
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                imageList[index]["price"],
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }
}
