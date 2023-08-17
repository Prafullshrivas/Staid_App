import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigationScreen/editprofile.dart';


class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("profile",),backgroundColor: Color(0xff254D71),
          centerTitle: true,

          actions: [
            IconButton(
                icon: Icon(Icons.edit,color: Colors.white,),
                onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>  editProfile()));
    }

            ),
          ]
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(

              radius: 70,
              backgroundImage: AssetImage("assets/Ellipse 10.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'James',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo,fontSize: 22),
            ),



            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    SizedBox(height: 20,),
                    Text('Name',style: TextStyle(color:Colors.grey,)),
                    SizedBox(height:8 ,),
                    Text('James',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Divider(),

                    SizedBox(height: 10,),
                    Text('Email Address',style: TextStyle(color:Colors.grey,)),
                    SizedBox(height:8 ,),
                    Text('jamesaustin@gmail.com',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Divider(),

                    SizedBox(height: 10,),
                    Text(' Phone Number',style: TextStyle(color:Colors.grey,)),
                    SizedBox(height:8 ,),
                    Text('+91 4987481387',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Divider(),

                  ]
              ),
            )

          ],
        ),
      ),
    );

  }
}
