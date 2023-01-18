import 'package:flutter/material.dart';

class Congratulations extends StatefulWidget {
  Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Congratulations Simson!'),
          Text('Your Order Was Confirmed! Track Your Order'),
          Text('Or Go To Homepage'),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(60),
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: () {},
                child: Text(
                  'Go To Homepage',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(60),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Track Order',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
          ),
        ],
      )),
    );
  }
}
