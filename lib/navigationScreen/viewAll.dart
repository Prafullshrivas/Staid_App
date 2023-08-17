import 'dart:convert' as convert;
import 'dart:convert';
import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:staid/loginscreens/employeesClass.dart';
import 'package:staid/loginscreens/employeesClass.dart';
import 'package:staid/navigationScreen/categoryclass.dart';
import 'package:staid/navigationScreen/postscreen.dart';
import 'package:staid/loginscreens/employeesClass.dart';
import 'package:staid/loginscreens/employeesClass.dart';
import 'package:http/http.dart' as http;

import '../loginscreens/employeesClass.dart';
import '../loginscreens/employeesClass.dart';


class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Employees>model=[];
  String stringResponse ="";
  Employees employee = new Employees();
  Future<void> serviceProviderclientsApi(BuildContext context) async {
    HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
      HttpLogger(logLevel: LogLevel.BODY),
    ] );
    var response = await http.get(Uri.parse ("https://dummyjson.com/products"),
        //("https://reqres.in/api/login"),
        //("https://reqres.in/api/login"),
        // ("https://reqres.in/api/users"),
        headers: {}
    );
    // var convert;
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    if (jsonResponse['status'] == true) {
      setState(() {});
      return;
    } else {
      stringResponse=response.body;
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      employee= await Employees.fromJson(jsonResponse);
      setState(() {

      });
    }
    return;
  }
@override
void initState(){
    super.initState();
    //print('image is >>>>${employee.products![0].images.toString()}');
    serviceProviderclientsApi(context);
    setState(() {
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category",),backgroundColor: Color(0xff254D71),
        centerTitle: true,
      ),
    body:

    SingleChildScrollView(
      child: GridView.builder(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
          itemCount: employee.products!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 6.0,
                childAspectRatio: 0.9),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 5, left: 5, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        30.0) //                 <--- border radius here
                    ),
                    color: Color(0xff254D71),
                  ),
                  child: InkWell(onTap:(){
                   // print(stringResponse.toString());

                     Navigator.push(context, MaterialPageRoute(builder: (context) => postPage()),);

                  } ,
                    //    child: Image.network(employee.products![index].images.toString(),fit:BoxFit.fill,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child:ClipRRect( 
                              borderRadius:  BorderRadiusDirectional.all(Radius.circular(20)),
                              child: Image.network(employee.products![index].thumbnail.toString(),
                                height: 200 ,
                                width: 120,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            employee.products![index].title.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                          Text(
                            employee.products![index].price.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                  Text(
                      employee.products![index].description.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),                          maxLines: 1,
                  ),

                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
    ),
    );
  }
}
