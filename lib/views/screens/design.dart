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
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 85,
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
                                'Mobile & Computer Accessories',
                                // overflow: TextOverflow.clip,
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
                    ),
                    Positioned(
                      // top: 10,
                      bottom: 0,
                      left: 10,
                      right: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          // onChanged: (value) => _runFilter(value),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15),
                            hintText: "Search",
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(),
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
