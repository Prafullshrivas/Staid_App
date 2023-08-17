import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staid/navigationScreen/widgetsforchatsscreen.dart';


class ChatScreen extends StatefulWidget {
   ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController = TextEditingController();

  List<String> list = [];

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.only(top: 10),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar:AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff254D71),
          title:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding:  EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/Ellipse 5.png',
                  fit: BoxFit.fill,
                  height: 42,
                ),
              ),
              Padding(padding:EdgeInsets.only(left: 2) ),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 3.0), child: Text('James',style: TextStyle(color: Colors.white),)),
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Active Now',style: TextStyle(fontSize: 12,color:Colors.white ),)),
                ],
              )
            ],
          ),
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25),),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                )
            ),
            child: Column(
              children: [
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:   EdgeInsets.all(15),
                  children:   [
                    ItemMessage(isSender: false, msg: 'Hey i am Steve you have register\non the app you have been assigned\nfor the task'),
                    ItemMessage(isSender: false, msg: 'I will pay 25 for this task and\n youhave to complete\n the taskwithin 8 hrs'),
                    ItemMessage(isSender: true, msg: 'Ok i am ready for the task'),

                    SizedBox(height: 5)
                  ],
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    padding:   EdgeInsets.all(8),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: ItemMessage(isSender: true, msg: list[index]),
                      );
                    }
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: double.infinity,
          child: Row(
            children: [
            Padding(
              padding:  EdgeInsets.only(right: 5,bottom: 5),
              child: Container(
              height: 40,
              width: 40,
              // decoration: BoxDecoration(
              //   color: Colors.indigo,
                // borderRadius: BorderRadius.circular(30),
              // ),
              child: Icon(Icons.camera_alt, color: Colors.indigo, size: 30, ),
          ),
            ),

              Expanded(
                  child: Container(
                    padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200
                    ),
                    child:   TextField(
                      controller: _messageController,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: 'Type message here...',
                          border: InputBorder.none,
                          isDense: true
                      ),
                    ),
                  )
              ),

              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(Icons.attach_file, color: Colors.indigo, size: 25, ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin:  EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor
                ),
                child:IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = _messageController.text.trim();
                    if (message.isNotEmpty) {
                      list.add(message);
                      setState(() {});
                      _messageController.clear();
                    }
                                      },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}