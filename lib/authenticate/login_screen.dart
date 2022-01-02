// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, dead_code, unnecessary_new

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 2.2,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/log.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "India's #1 Food Delivery",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 26,
              ),
            ),
            Text(
              "and Dining App",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 26,
              ),
            ),
            Container(
              height: size.height / 12,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: size.width / 3,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Log in or sign up",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: size.width / 3,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            field(size),
            SizedBox(
              height: size.height / 40,
            ),
            ContinueButton(size),
            Container(
              height: size.height / 12,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: size.width / 3,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: size.width / 3,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleImage(size, "assets/images/google.png"),
                  circleImage(size, "assets/images/3dot.jpg"),
                ],
              ),
            ),
            SizedBox(height: size.height / 25),
            Text(
              "By Continuing, you agree to our",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Terms of Services Privacy Policy Content Policy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget ContinueButton(Size size) {
    return Container(
        height: size.height / 16,
        width: size.width / 1.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.redAccent,
        ),
        child: Row(
          children: [
            SizedBox(
              width: size.width / 6,
            ),
            SizedBox(
              width: size.width / 6,
            ),
            Text(
              "Continue",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ));
  }

  Widget field(Size size) {
    return Container(
      height: size.height / 22,
      width: size.width / 1.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 20,
          ),
          Container(
            height: size.height / 30,
            width: size.height / 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/flag.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\t\t+91",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(Icons.arrow_drop_down),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: size.height / 14,
              width: size.width / 2,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Phone Number"),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget circleImage(Size size, String path) {
    return Container(
      width: size.height / 10,
      height: size.width / 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.contain, image: AssetImage(path)),
        color: Colors.black,
      ),
    );
  }
}
