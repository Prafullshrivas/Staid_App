import 'package:flutter/material.dart';

import '../loginscreens/loginScreen.dart';
import 'homescreen.dart';
import 'navigation.dart';

class postPage extends StatefulWidget {
  const postPage({super.key});

  @override
  State<postPage> createState() => _postPageState();
}

class _postPageState extends State<postPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post a Talk"),
        backgroundColor: Color(0xff254D71),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Task Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: TextField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Task Discription",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Task Duration",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 120.0, vertical: 15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          primary: Color(0xff254D71)),
                      child: Text(
                        "Post",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),

                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              icon: Image.asset("assets/Group 20.png"),
                              //title: Text("AlertDialog Title"),

                              content: Text(
                                "successfully!\nAdmin wil approve you soon",
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                TextButton(
                                  child: Center(
                                    child: Text(
                                      "Done",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 120.0, vertical: 15.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      primary: Color(0xff254D71)),
                                  onPressed: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => MyStatefulWidget()),);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      //   if(otp.isEmpty){
                      //     Fluttertoast.showToast(msg: "Please enter Valid OTP",backgroundColor: Colors.red);
                      //   } else if(otp.length<5){
                      //     Fluttertoast.showToast(msg: "Please enter Valid OTP",backgroundColor: Colors.red);
                      //   } else(otp){
                      //     // Navigator.push(
                      //     //   context,
                      //     //   PageTransition(
                      //     //       type: PageTransitionType.rightToLeft,
                      //     //       child: password(),
                      //     //       duration: Duration(milliseconds: 2000),
                      //     //       inheritTheme: true,
                      //     //       ctx: context),
                      //     // );
                      //   };
                      //
                      //
                      //
                      //   // Navigator.push(context,
                      //   //     MaterialPageRoute(builder: (context) => password()));
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
