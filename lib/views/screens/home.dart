import 'package:flutter/material.dart';
import 'package:intern_login_page/views/widgets/containerwidget.dart';
import 'package:intern_login_page/views/widgets/disountcontainer.dart';
import 'package:intern_login_page/views/widgets/gridview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSeleted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                // height: 100,
                // width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2021/07/20/14/59/iron-man-6480952_960_720.jpg'),
                        radius: 18,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(
                          50,
                        ),
                      )),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(31, 239, 201, 201),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            hintText: "Search Your Keyword",
                            hintStyle:
                                Theme.of(context).textTheme.caption?.copyWith(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                            suffixIcon: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 0.7, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 37,
                        width: 37,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: InkWell(
                      onTap: () {
                        isSeleted = true;
                      },
                      child: Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          color: isSeleted ? Colors.white : Colors.orange,
                          border: Border.all(
                              width: 0.7,
                              color: isSeleted ? Colors.black : Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Watches',
                            style: TextStyle(
                                color: isSeleted ? Colors.black : Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Shoes'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 30,
                      width: 155,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Laptops & Computers'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Clothes'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Flash Deals",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.width * 0.384,
                child: DiscountWidget()),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/bannershoe.jpg'),
                    fit: BoxFit.fill,
                  ),
                  // shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.width * 0.384,
                child: ContainerWidget()),
            Container(
                height: MediaQuery.of(context).size.width * 0.384,
                child: ContainerWidget()),
            Container(
                height: MediaQuery.of(context).size.width * 0.384,
                child: ContainerWidget()),
          ],
        ),
      ),
    );
  }
}
