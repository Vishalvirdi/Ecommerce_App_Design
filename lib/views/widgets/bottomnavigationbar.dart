import 'package:flutter/material.dart';
import 'package:intern_login_page/views/screens/cartpage.dart';

import '../screens/account.dart';

import '../screens/design.dart';
import '../screens/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _ourpages = [HomePage(), DesignPage(), CartPage(), AccountPage()];
  var myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _ourpages[myindex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: ((index) {
            setState(() {
              myindex = index;
            });
          }),
          currentIndex: myindex,
          // fixedColor: Colors.amber,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 234, 181, 23),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                color: Colors.black,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_rounded,
                color: Colors.black,
              ),
              label: 'Account',
            ),
          ],
        ));
  }
}
