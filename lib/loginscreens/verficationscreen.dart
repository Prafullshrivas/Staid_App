import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:staid/loginscreens/phoneVerfication.dart';

class verificationScreen extends StatefulWidget {
  const verificationScreen({super.key});

  @override
  State<verificationScreen> createState() => _verificationScreenState();
}

class _verificationScreenState extends State<verificationScreen> {
  TextEditingController otpController = TextEditingController();
  String otp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

          SizedBox(
            height: 30,
          ),
          Container(
            //width: width,
            //height45,
            child: Image.asset(
              'assets/Vector.png',
              //fit: BoxFit.fill,
              height: 120,
              width: 120,
            ),
          ),
          Container(
            child: Text(
                "Enter verification code we have sent to \n your registered email address ",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          OtpTextField(
            numberOfFields: 6,
            borderColor: Color(12),
            focusedBorderColor: Color(12),
            styles: List.filled(6, null),
            showFieldAsBox: false,
            borderWidth: 4.0,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here if necessary
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {},
          ),

          Padding(
            padding: const EdgeInsets.only(top:360),
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 120.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  primary: Color( 0xff254D71)),
                child: Text(
                  "Verify",
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
                          "Your Email Address Has been Verified",
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
                            ), style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120.0, vertical: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              primary: Color( 0xff254D71)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => phoneVerification()),);
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

          //  ElevatedButton(
          //   child: const Text('Verify'),
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => password()));
          //   },
          // ),
          ]),
      ),
    ));
  }
}
