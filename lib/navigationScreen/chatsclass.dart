import 'package:flutter/material.dart';

import 'chatscreen.dart';

class chaticon extends StatefulWidget {
  const chaticon({super.key});

  @override
  State<chaticon> createState() => _chaticonState();
}

class _chaticonState extends State<chaticon> {
  List<Map<String, String>> string = [
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },
    {
      'image': "assets/Group 1000004146.png",
      'Text': 'Want To Create My Assignment',
      'subtitle': 'Assignment',

    },


  ];
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        appBar: AppBar(title: Text("Chats "),
          backgroundColor: Color(0xff254D71),
          centerTitle: true,
        ),

        body:
        InkWell(
          onTap: (){
            Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) =>  ChatScreen()));
          },
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: string.length,
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Card( elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),



                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius:35 ,
                          backgroundImage: AssetImage(string[index]['image'].toString(),),backgroundColor: Colors.black,
                        ),

                        // Image.asset(
                        //   string[index]['image'].toString(),
                        //   height: 52,
                        //   width: 95,
                        //   fit: BoxFit.fill,
                        // ),
                        SizedBox(
                          height: 30,
                          width: 30,),
                        Expanded(
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(string[index]['Text'].toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                              Text(string[index]['subtitle'].toString(),),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                );
              }),
        ),
      );
  }
}
