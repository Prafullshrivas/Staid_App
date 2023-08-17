import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';

 import 'navigation.dart';

//0xff254D71
class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  ImagePicker picker = ImagePicker();
  XFile? image;
  File? selectedImage1;



  // void _handleURLButtonPress(BuildContext context, var type) {
  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
  // }
  Future<void> chooseImage5(type) async {
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );

      // imageFileList.add(image);
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      // imageFileList.add(image);
    }
    print("dfasdjfkla;dsjfa${image.path}");
    if (image != null) {
      setState(() {
        selectedImage1 = File(image.path);
        Navigator.of(context);
        // base64Image = base64Encode(selectedImage1!.readAsBytesSync());
        // print(imageFileList);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("profile",),backgroundColor: Color(0xff254D71),
          centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [

                     GestureDetector(
                      onTap: (){_showMyDialog();},
                      child: Container(
                          child:selectedImage1 == null? Image.asset('assets/Ellipse 10.png',
                            fit: BoxFit.fill,height: 120,width: 120,):CircleAvatar(
                              radius:50,
                              child:CircleAvatar(
                                radius:
                                58,
                                backgroundImage:
                                Image.file(
                                  selectedImage1!,
                                  fit: BoxFit
                                      .cover,
                                ).image,
                              ))
                      ),
                    ),

                  ],
                ),


                  SizedBox(height: 10,),
                 Text(
                  'James',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo,fontSize: 22),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 3,
                      ),
                    ),
                    prefixIcon: Icon(Icons.person,color: Color( 0xff254D71),),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
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
                      child: Icon(Icons.email,color: Color( 0xff254D71),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 3,
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone,color: Color( 0xff254D71),),

                  ),
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
      ),
    );
  }
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text('Please choose option'),
          content:  SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  children: [
                    TextButton(
                      child: Text(
                        "Camera",
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () async {
                        chooseImage5('camera');
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 10,),
                    TextButton(
                      child: Text(
                        "Gallary",
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () async {
                        chooseImage5("Gallary");
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Approve'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}
