import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staid/loginscreens/employeesClass.dart';
import 'package:staid/loginscreens/registerscreen.dart';
import 'package:staid/loginscreens/verficationscreen.dart';
import 'package:http/http.dart' as http;

import '../navigationScreen/navigation.dart';

class loginscreen extends StatefulWidget {
  loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  late String stringResponse;

  Future apicall() async {
    http.Response response;
    response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/"));
    if (response.statusCode == 200) {
      setState(() async {
        stringResponse = response.body;
        Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        Employees employees = await Employees.fromJson(jsonResponse);
        setState(() {});
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  var emailController = new TextEditingController();
  var passwordController = new TextEditingController();
  String deviceid = "";
  String devicetype = "";
  bool passwordstatus = true;
  String _timezone = '';

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return MediaQuery(
      data: mediaQueryData.copyWith(textScaleFactor: 1.0),
      child: Scaffold(
          body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xFF254D71)),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/Group 1000004265.png',
                    width: 136,
                    height: 141,
                  ),
                ),
                flex: 40,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(14),
                                  topLeft: Radius.circular(14),
                                  bottomRight: Radius.circular(14),
                                  bottomLeft: Radius.circular(14)),
                              border: Border.all(
                                width: 1,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                                  child: Icon(Icons.email)),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 9, 0, 9),
                                height: 39,
                                width: 1,
                                color: Colors.black,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.fromLTRB(12, 5, 0, 0),
                                  child: TextField(
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          'assets/font/poppins_regular.ttf',
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email Address",
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              "assets/font/poppins_regular.ttf"),
                                      counter: Offstage(),
                                      isDense: true,
                                      // this will remove the default content padding
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(14),
                                  topLeft: Radius.circular(14),
                                  bottomRight: Radius.circular(14),
                                  bottomLeft: Radius.circular(14)),
                              border: Border.all(
                                width: 1,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                                  child: Icon(Icons.lock)),
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 9, 0, 9),
                                  height: 39,
                                  width: 1,
                                  color: Colors.orange),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.fromLTRB(12, 5, 0, 0),
                                  child: TextField(
                                    controller: passwordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          'assets/font/poppins_regular.ttf',
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              "assets/font/poppins_regular.ttf"),
                                      counter: Offstage(),
                                      isDense: true,
                                      // this will remove the default content padding
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                    ),
                                    obscureText: passwordstatus,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     if (passwordstatus == true) {
                              //       passwordstatus = false;
                              //       setState(() {});
                              //     } else {
                              //       passwordstatus = true;
                              //       setState(() {});
                              //     }
                              //   },
                              //   child: Container(
                              //     margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
                              //     child: SvgPicture.asset(
                              //       passwordstatus != false
                              //           ? "assets/images/ic_eye_close_grey.svg"
                              //           : "assets/images/ic_eye_open_grey.svg",
                              //       width: 15,
                              //       height: 14,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => verificationScreen()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'assets/font/poppins_regular.ttf',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //
                        //     Navigator.push(context, MaterialPageRoute(builder: (context) => Navigations()),);
                        //
                        //   },
                        //   child: Container(
                        //     margin: EdgeInsets.fromLTRB(20, 26, 20, 0),
                        //     alignment: Alignment.center,
                        //     width: MediaQuery.of(context).size.width,
                        //     padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.only(
                        //           topRight: Radius.circular(43),
                        //           topLeft: Radius.circular(43),
                        //           bottomRight: Radius.circular(43),
                        //           bottomLeft: Radius.circular(43)),
                        //     ),
                        //     child: Text(
                        //       "Login",
                        //       style: TextStyle(
                        //         fontSize: 14,
                        //         fontWeight: FontWeight.w700,
                        //         fontFamily: 'assets/font/poppins_bold.ttf',
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          width: 291,
                          height: 49,
                          child: ElevatedButton(
                            onPressed: () {
                              print(stringResponse.toString());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyStatefulWidget()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 120.0, vertical: 15.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                primary: Color(0xff254D71)),
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(20, 13, 20, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Don’t have an account? ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily:
                                        'assets/font/poppins_regular.ttf',
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            registrationPage()),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily:
                                          'assets/font/poppins_regular.ttf',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                flex: 60,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
