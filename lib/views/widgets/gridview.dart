import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List imageList = [
    {"image": "assets/watch.jpg", "name": "Watches"},
    {"image": "assets/shoes.jpg", "name": "Shoes"},
    {"image": "assets/toys.jpg", "name": "Toys"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: imageList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio:
                      MediaQuery.of(context).size.width * .44 / 246,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3),
              itemBuilder: (context, index) => Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          height: 110,
                          width: double.infinity,
                          child: Image.asset(
                            imageList[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 35,
                      child: Text(imageList[index]['name']),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
