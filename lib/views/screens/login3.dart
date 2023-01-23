import 'package:flutter/material.dart';
import 'package:intern_login_page/views/screens/login4.dart';

class LoginPage3 extends StatefulWidget {
  const LoginPage3({Key? key}) : super(key: key);

  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 580,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 200,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Text(
                            'Shopp.my',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(40.0),
                            bottomRight: Radius.circular(90.0),
                            // topLeft: Radius.circular(40.0),
                            bottomLeft: Radius.circular(90.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        // margin: EdgeInsets.only(top: 80, left: 18, right: 18),
                        height: 480,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: ToggleButtons(
                                    fillColor: Colors.orange,
                                    selectedColor: Colors.white,
                                    color: Colors.orange,
                                    selectedBorderColor: Colors.orange,
                                    borderColor: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                    children: [
                                      Container(
                                        // height: 25,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        child: Center(
                                          child: Text(
                                            "Log in",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        child: Center(
                                          child: Text("Sign Up",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      )
                                    ],
                                    isSelected: isSelected,
                                    onPressed: (index) {
                                      isSelected[index] = !isSelected[index];
                                      if (index == 1 && isSelected[index]) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage4()));
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 7, right: 15),
                                child: Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintStyle: TextStyle(fontSize: 14),
                                      hintText: 'Username Or Email',
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
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 7, right: 15),
                                child: Container(
                                  height: 60,
                                  // color: Colors.black,

                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      // border: OutlineInputBorder(),
                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        size: 18,
                                      ),
                                      hintStyle: TextStyle(fontSize: 14),
                                      hintText: 'Password',
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
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size.fromHeight(45),
                                      primary: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      )),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginPage4()));
                                    // if (_formkey.currentState!.validate()) {
                                    //   // ScaffoldMessenger.of(context).showSnackBar(
                                    //   //   const SnackBar(content: Text('')),
                                    //   // );
                                    // }
                                  },
                                  child: Text(
                                    'Log In',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                  child: Text(
                                "Or",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.facebook_sharp,
                                      // color: Colors.blue,
                                      size: 18.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: new Tab(
                                          icon: new Image.asset(
                                              "assets/linkedin.png"),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
