import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:staid/loginscreens/loginScreen.dart';

import '../changepassword.dart';
import '../loginscreens/editprofilepage.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profile",
        ),
        backgroundColor: Color(0xff254D71),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/Ellipse 10.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text('james',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff254D71),
                    fontSize: 22)),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              //alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 60,
              //width: double.infinity,
              margin: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffB3B3B3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Column(
                // creating column for all three rows.
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Icon(Icons.person),
                        ),
                        Container(
                          height: 45,
                          width: 10,
                          child: VerticalDivider(
                            width: 10,
                            thickness: 1,
                            indent: 8,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17, left: 5),
                          child: Text('Profile',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Align(
                            // here I am trying to make the third icon in the most left size of the row (in the edge of the edit profile border). but it's not working.
                            alignment: Alignment.centerLeft,

                            child: Container(
                              child: new IconButton(
                                icon: new Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: profilePage(),
                                        duration: Duration(milliseconds: 15),
                                        inheritTheme: true,
                                        ctx: context),
                                  );
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile1()),);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              //alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 60,
              //width: double.infinity,
              margin: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffB3B3B3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Column(
                // creating column for all three rows.
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Icon(Icons.lock),
                        ),
                        Container(
                          height: 45,
                          width: 10,
                          child: VerticalDivider(
                            width: 10,
                            thickness: 1,
                            indent: 8,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 5),
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Align(
                            // here I am trying to make the third icon in the most left size of the row (in the edge of the edit profile border). but it's not working.
                            alignment: Alignment.centerLeft,

                            child: Container(
                              child: new IconButton(
                                icon: new Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: setPassword(),
                                        duration: Duration(milliseconds: 15),
                                        inheritTheme: true,
                                        ctx: context),
                                  );
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile1()),);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              //alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 60,
              //width: double.infinity,
              margin: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffB3B3B3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Column(
                // creating column for all three rows.
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Icon(Icons.output_outlined),
                        ),
                        Container(
                          height: 45,
                          width: 10,
                          child: VerticalDivider(
                            width: 10,
                            thickness: 1,
                            indent: 8,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 5),
                          child: Text('Logout',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Align(
                            // here I am trying to make the third icon in the most left size of the row (in the edge of the edit profile border). but it's not working.
                            alignment: Alignment.centerLeft,

                            child: Container(
                              child: new IconButton(
                                icon: new Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: loginscreen(),
                                        duration: Duration(milliseconds: 15),
                                        inheritTheme: true,
                                        ctx: context),
                                  );
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile1()),);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
