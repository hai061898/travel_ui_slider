import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelui/pages/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/travelaPhoto.png',
                  width: Get.width,
                  height: Get.height * .50,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: Get.width * .05,
                  top: Get.height * .07,
                  child: Text(
                    'Travel',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * .03),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * .05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: Get.height * .02),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color(0xff00ADB5),
                    decoration: InputDecoration(
                      focusColor: Color(0xff00ADB5),
                      fillColor: Color(0xff00ADB5),
                      hoverColor: Color(0xff00ADB5),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00ADB5)),
                      ),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.check, color: Colors.green),
                    ),
                  ),
                  SizedBox(height: Get.height * .02),
                  TextField(
                    cursorColor: Color(0xff00ADB5),
                    decoration: InputDecoration(
                      focusColor: Color(0xff00ADB5),
                      fillColor: Color(0xff00ADB5),
                      hoverColor: Color(0xff00ADB5),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00ADB5))),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Password',
                      suffixIcon:
                          Icon(Icons.remove_red_eye, color: Colors.grey[300]),
                    ),
                  ),
                  SizedBox(height: Get.height * .07),
                  Container(
                    width: Get.width,
                    height: Get.height * .05,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        primary: Colors.grey[800],
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () => Get.to(HomeScreen()),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * .02),
                  Text(
                    'Forget Password',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Get.height * .07),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      'Don`t have an account',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff00ADB5),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
