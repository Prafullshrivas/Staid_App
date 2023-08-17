import 'package:flutter/material.dart';
import 'package:staid/navigationScreen/categoryclass.dart';
import 'package:staid/navigationScreen/postedTask.dart';
import 'package:staid/navigationScreen/postscreen.dart';
import 'package:staid/navigationScreen/viewAll.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}
class _homeScreenState extends State<homeScreen> {

  List<subjectclass>model=[];
  @override
  void initState() {

    super.initState();
    model.add(new subjectclass( image: 'assets/Group 51.png',title:'Assignment'));
    model.add(new subjectclass( image: 'assets/Group 49.png',title:'Researches'));
    model.add(new subjectclass( image: 'assets/Group 50.png',title:'References'));
    model.add(new subjectclass( image: 'assets/Group 50.png',title:'References'));
    setState(() {
    });
  }
  Widget build(BuildContext context) {
    return
      Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => postPage()),);
              // Add your onPressed code here!
            },
            backgroundColor:  Color(0xff254D71),
            child: const Icon(Icons.add,color: Colors.white,),
          ),
          appBar:AppBar(

              leading:Padding(
                padding: const EdgeInsets.only(top: 5,left: 0,right: 0),
                child: Image.asset(
                  'assets/Ellipse 5.png',
                  fit: BoxFit.fill,
                  // height: 44,
                  //  width: 50,
                ),
              ),
              //toolbarHeight: 120,
              backgroundColor: Color(0xff254D71),
              title: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(2.0), child: Text('Hii James',style: TextStyle(color: Colors.white),))],
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.notifications,color: Colors.white,),
                    onPressed: (){}
                ),
              ]
          ),
          body:Container(
              child: SingleChildScrollView(
                  child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 70,width: 10,),
                            new GestureDetector(
                              child: new Text(
                                "Category",
                                style: new TextStyle(color: Color( 0xff000000),fontWeight: FontWeight.bold,fontSize: 15.0),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 220),
                              child: SizedBox(
                                width: 90,

                                child:ElevatedButton(
                                  onPressed: () {

                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Products()),);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    onSurface: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    //make color or elevated button transparent
                                  ),

                                  // style: ElevatedButton.styleFrom(
                                  //   padding: EdgeInsets.symmetric(
                                  //       horizontal: 10.0, vertical: 5.0),
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(10.0)),
                                  // ),
                                  child: Text(
                                    "View All",
                                    style: TextStyle(color: Color(0xff254D71), fontSize: 15),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),


                        GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: model.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 6.0,
                                childAspectRatio: 0.9
                            ),
                            itemBuilder: (BuildContext context, int index){
                              return Padding(
                                padding:  EdgeInsets.only(right: 10,left: 10,top: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0) //                 <--- border radius here
                                    ),
                                    color:Color( 0xff254D71),

                                  ),
                                  child:Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 25),
                                        child: Image.asset(model[index].image,fit:BoxFit.fill,height: 90,width: 90,),
                                      ),
                                      SizedBox(height: 15,),
                                      Text(model[index].title,
                                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                        ),
                        SizedBox(height: 15),
                        Column(
                          children: [
                            Padding(
                              padding:   EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:   EdgeInsets.only(left: 15),
                                    child: Text("Recent Task",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Padding(
                          padding:  EdgeInsets.all(16.0),
                          child: Container(
                            // alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 100,
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
                                        "Assignment",
                                        style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Spacer(),

                                    Container(

                                      padding: EdgeInsets.only(right: 20,),
                                      child: GestureDetector(
                                        onTap: (){
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => create()),);
                                        },
                                        child: Text.rich(

                                          TextSpan(
                                            text: 'Completed',
                                            style: TextStyle(
                                                color: Colors.green
                                            ),
                                          ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Container(
                                  padding: EdgeInsets.only(left: 20,top: 10),
                                  child: Text(
                                    "4 Hrs",
                                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            // alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 100,
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
                                // SizedBox(width: 20,),
                                // new GestureDetector(
                                //   child: new Text(
                                //     "Want To Create My Assignment",
                                //     style: new TextStyle(color: Color( 0xff000000),fontWeight: FontWeight.bold,fontSize: 15.0),
                                //   ),
                                // ),

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
                                        "Assignment",
                                        style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Spacer(),

                                    Container(

                                      padding: EdgeInsets.only(right: 20,),
                                      child: GestureDetector(
                                        onTap: (){
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => create()),);
                                        },
                                        child: Text.rich(

                                          TextSpan(
                                            text: 'Completed',
                                            style: TextStyle(
                                                color: Colors.green
                                            ),
                                          ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Container(
                                  padding: EdgeInsets.only(left: 20,top: 10),
                                  child: Text(
                                    "4 Hrs",
                                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            // alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 100,
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
                                // SizedBox(width: 20,),
                                // new GestureDetector(
                                //   child: new Text(
                                //     "Want To Create My Assignment",
                                //     style: new TextStyle(color: Color( 0xff000000),fontWeight: FontWeight.bold,fontSize: 15.0),
                                //   ),
                                // ),

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
                                        "Assignment",
                                        style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(

                                      padding: EdgeInsets.only(right: 20,),
                                      child: GestureDetector(
                                        onTap: (){
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => create()),);
                                        },
                                        child: Text.rich(

                                          TextSpan(
                                            text: 'Completed',
                                            style: TextStyle(
                                                color: Colors.green
                                            ),
                                          ),

                                        ),
                                      ),
                                    ),
                                    // Container(
                                    //   padding: EdgeInsets.only(right: 20,),
                                    //   child: ElevatedButton(
                                    //
                                    //     child: const Text('Completed',style: TextStyle(color:Colors.white),),
                                    //     onPressed: () {
                                    //       // Navigator.push(context, MaterialPageRoute(builder: (context) => categoey1()),);
                                    //     },
                                    //     // style: ElevatedButton.styleFrom(
                                    //     //     padding: EdgeInsets.symmetric(
                                    //     //         horizontal: 20.0, vertical: 10.0),
                                    //     //     shape: RoundedRectangleBorder(
                                    //     //         borderRadius: BorderRadius.circular(30.0)),
                                    //     //     primary: Colors.green),
                                    //   ),
                                    // ),
                                  ],
                                ),

                                Container(
                                  padding: EdgeInsets.only(left: 20,top: 10),
                                  child: Text(
                                    "4 Hrs",
                                    style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]
                  )

              )
          )
      );
  }
}
