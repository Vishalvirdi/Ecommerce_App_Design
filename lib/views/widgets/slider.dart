import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int currentIndex = 0;
  final PageController controller = PageController();
  final imageList = [
    'assets/Headphone2.jpg',
    'assets/Headphone2.jpg',
    'assets/Headphone2.jpg',
    'assets/Headphone2.jpg',
    'assets/Headphone2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.greenAccent,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: IconButton(
                      onPressed: () {
                        controller.jumpToPage(currentIndex - 1);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18,
                      )),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index % imageList.length;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Image.asset(
                          imageList[index % imageList.length],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.greenAccent,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  elevation: 5,
                  child: IconButton(
                    onPressed: () {
                      controller.jumpToPage(currentIndex + 1);
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < imageList.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        elevation: 5,
        child: Container(
          height: 37,
          width: 34,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(
                color: isSelected ? Colors.orange : Colors.white,
              )),
          child: Image.asset(
            'assets/Headphone2.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
