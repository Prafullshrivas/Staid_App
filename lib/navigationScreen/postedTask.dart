import 'package:flutter/material.dart';
import 'package:staid/navigationScreen/payment.dart';
 class postedTask extends StatefulWidget {
  const postedTask({super.key});

  @override
  State<postedTask> createState() => _postedTaskState();
}

class _postedTaskState extends State<postedTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posted Task"),
        backgroundColor: Color(0xff254D71),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                  fontSize: 10,
                                  )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff254D71),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Want To Create My Assignment",
                      style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                    ),
                  ),
                  // SizedBox(height: 8,width: 10,),
                  Row(
                    children: [
                      //SizedBox(height: 50,width: 10,),
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Assignment", textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),

                      Container(

                        padding: EdgeInsets.only(right: 20,),
                        child: ElevatedButton(
                          child: Text('PAY'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => payMentPage()),);

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric( vertical: 5),
                              textStyle: TextStyle(
                                fontSize: 10,
                              )),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "4 Hrs",
                      textAlign: TextAlign.left,
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
