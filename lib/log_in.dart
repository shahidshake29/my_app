import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shahid/utills/all_colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

// for global variables
final _formKey = GlobalKey<FormState>();
String _email="sakeshahid29@gmail.com";
String _password="01307242550";
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: AllColors.backGroundCol,
        child: Padding(
          padding: EdgeInsets.only(
            top: h * 0.09,
            left: w * 0.07,
            right: w * 0.07,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Icon(
                  Icons.account_circle_sharp,
                  size: h * 0.08 + w * 0.08,
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: AllColors.appThemeColor),
                    hintText: "Enter Your Email",
                    suffixIcon: Icon(Icons.email_rounded,
                        color: AllColors.appThemeColor1),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColors.appThemeColor)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.appThemeColor),
                    ),
                    hintStyle: TextStyle(
                      color: AllColors.appThemeColor1,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: AllColors.appThemeColor),
                    hintText: "Enter Your Password",
                    suffixIcon: Icon(Icons.remove_red_eye,
                        color: AllColors.appThemeColor1),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColors.appThemeColor)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColors.appThemeColor),
                    ),
                    hintStyle: TextStyle(
                      color: AllColors.appThemeColor1,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AllColors.appThemeColor1),
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Log In",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: AllColors.appBarClr,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
