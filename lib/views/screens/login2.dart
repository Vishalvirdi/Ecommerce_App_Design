import 'package:flutter/material.dart';
import 'package:intern_login_page/views/screens/login3.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 120.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/shoppy.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Log Into Your Account",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.7, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 158,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, top: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 47,
                                width: 47,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.7, color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Icon(
                                  Icons.mail_outlined,
                                  color: Colors.orange,
                                  size: 24.0,
                                ),
                              ),
                              Container(
                                height: 47,
                                width: MediaQuery.of(context).size.width - 105,
                                child: Center(
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.7,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      hintText: 'vishalvirdi@039gmail.com',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                    ),
                                    validator: (val) {
                                      return RegExp(
                                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(val!)
                                          ? null
                                          : "Please enter a valid email";
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, top: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 47,
                                width: 47,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.7, color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Icon(
                                  Icons.lock_outlined,
                                  color: Colors.orange,
                                  size: 24.0,
                                ),
                              ),
                              Container(
                                height: 47,
                                width: MediaQuery.of(context).size.width - 105,
                                child: Center(
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0.7,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      hintText: '*************',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      if (value.length != 8) {
                                        return 'Password length should be atleast 8 char';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(45),
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage3()));
                        // if (_formkey.currentState!.validate()) {
                        //   // ScaffoldMessenger.of(context).showSnackBar(
                        //   //   const SnackBar(content: Text('')),
                        //   // );
                        // }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    "Or",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      "Login Your Account With",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Icon(
                          Icons.facebook_sharp,
                          // color: Colors.blue,
                          size: 24.0,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Tab(
                              icon: new Image.asset("assets/linkedin.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
