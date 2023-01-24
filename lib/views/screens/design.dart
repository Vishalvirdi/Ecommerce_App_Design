import 'package:flutter/material.dart';

import '../widgets/gridview.dart';

class DesignPage extends StatefulWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 115,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 85,
                        // width: 300,
                        color: Colors.orange,
                        child: ListTile(
                          leading: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(150.0),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Center(
                                child: Icon(
                              size: 14.5,
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.white,
                            )),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Flexible(
                                  child: Text(
                                    'Mobile & Computer Accessories',
                                    overflow: TextOverflow.ellipsis,
                                    textScaleFactor: 1,
                                    style: TextStyle(color: Colors.white),
                                  ),
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
                    ),
                    Positioned(
                      // top: 10,
                      bottom: 0,
                      left: 10,
                      right: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              // onChanged: (value) => _runFilter(value),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 15),
                                hintText: "Search",
                                suffixIcon: const Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 1,
              // ),
              Gridview(),
              Gridview(),
              Gridview(),
              Gridview(),
            ],
          ),
        ),
      ),
    );
  }
}
