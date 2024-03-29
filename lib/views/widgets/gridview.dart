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
                  childAspectRatio: MediaQuery.of(context).size.width *
                      .35 /
                      (MediaQuery.of(context).size.width * 0.35 + 35),
                  // mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3),
              itemBuilder: (context, index) => Container(
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
                              width: 0.75,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          height: MediaQuery.of(context).size.width * 0.26,
                          width: double.infinity,
                          child: Image.asset(
                            imageList[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      imageList[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
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
