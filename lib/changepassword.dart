import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'navigationScreen/homescreen.dart';
import 'navigationScreen/navigation.dart';
class setPassword extends StatefulWidget {
  const setPassword({super.key});

  @override
  State<setPassword> createState() => _setPasswordState();
}

class _setPasswordState extends State<setPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("New Password",),backgroundColor: Color(0xff254D71),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/get-started.png',
                  fit: BoxFit.fitHeight,
                  height:250,
                  width: 250,

                ),

              ),
              SizedBox(height: 20,),

              Container(
                child: Text("Reset your password to login back \n to your account",style: TextStyle(fontSize: 18)),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pasword',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 3,
                      ),
                    ),
                    prefixIcon: Icon(Icons.lock,color: Color( 0xff254D71),),
                     suffixIcon: Icon(Icons.visibility_off,)

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      //color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                  prefixIcon: IconTheme(
                    data: IconThemeData(
                    ),
                    child: Icon(Icons.lock,color: Color( 0xff254D71),),

                  ),
                    suffixIcon: Icon(Icons.visibility_off,)

                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(height: 60,),
              SizedBox(
                // width: 291,
                // height: 49,
                child:ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: MyStatefulWidget(),
                          duration: Duration(milliseconds: 1000),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 120.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      primary: Color( 0xff254D71)),
                  child: Text(
                    "Update",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
