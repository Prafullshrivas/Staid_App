import 'package:flutter/material.dart';

import 'navigation.dart';

class payMentPage extends StatefulWidget {
  const payMentPage({super.key});

  @override
  State<payMentPage> createState() => _payMentPageState();
}

class _payMentPageState extends State<payMentPage> {
  List<Map<String, String>> images = [
    {
      'image': 'assets/Group 1000004209.png',
      'str': 'Transaction',
      'Text': '08-12-2022',
      'discription': '17:00',
      'Name': '\$75'
    },
    {
      'image': 'assets/Group 1000004209.png',
      'str': 'Transaction',
      'Text': '08-12-2022',
      'discription': '17:00',
      'Name': '\$125'
    },
    {
      'image': 'assets/Group 1000004209.png',
      'str': 'Transaction',
      'Text': '08-12-2022',
      'discription': '17:00',
      'Name': '\$95'
    },
    {
      'image': 'assets/Group 1000004209.png',
      'str': 'Transaction',
      'Text': '08-12-2022',
      'discription': '17:00',
      'Name': '\$150'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            " Payment",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 4),
          ),
          //toolbarHeight: 80,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          backgroundColor: Color(0xff254D71),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              Container(
                margin: const EdgeInsets.all(40.0),
                // height: 150.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff005576),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),

                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 22, top: 20),
                        child: Text(
                          "Want To Create My Assignment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 95, top: 10),
                        child: Text(
                          "\$ 1600",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 90, top: 10),
                        child: ElevatedButton(
                          child: const Text(
                            'Pay',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  titlePadding: EdgeInsets.only(left: 100,top: 20),
                                    title:Text("Amount \n \n \$800") ,                                  //title: Text("AlertDialog Title"),

                                  content: Text(
                                    "Sucessfully!",
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Center(
                                          child: Text(
                                        "submit",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      )),
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 40.0, vertical: 20.0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          primary: Color(0xff005576)),
                                      onPressed: () {
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => MyStatefulWidget()),);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                            //make color or elevated button transparent
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'History',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

//

              ListView.builder(
                  shrinkWrap: true,
                  itemCount: images.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Card(
                          color: Colors.white,
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),

                            //margin: EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  images[index]['image'].toString(),
                                  height: 66,
                                  width: 66,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 90,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          images[index]['str'].toString(),
                                          maxLines: 1,
                                          style: new TextStyle(
                                              color: Color(0xff005576),
                                              fontSize: 14.0),
                                        ),
                                        Text(
                                          images[index]['Text'].toString(),
                                          maxLines: 1,
                                          style: new TextStyle(
                                              color: Color(0xff005576),
                                              fontSize: 14.0),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          images[index]['discription']
                                              .toString(),
                                          maxLines: 1,
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  alignment: Alignment.topRight,
                                  height: 70,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                            padding: EdgeInsets.only(top: 0.5),
                                            // Spacer(),
                                            child: Text(
                                              images[index]['Name'].toString(),
                                              style: TextStyle(
                                                color: Color(0xff005576),
                                                fontSize: 14,
                                              ),
                                              textAlign: TextAlign.end,
                                            )),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          )),
                    );
                  }),
            ],
          ),
        ));
  }
}
