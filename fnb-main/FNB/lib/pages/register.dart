import 'package:flutter/material.dart';
import 'package:fnb/pages/create.dart';
import 'package:get/get.dart';


class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          backgroundColor: Color(0xff8d0000),

          appBar: AppBar (

            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
              onPressed: ()=> Navigator.pop(context),
              
            ),
            backgroundColor:Color(0xff8d0000) ,
            centerTitle: true,
            title: Text ('Registration'.tr),

          ),

          body:
          Container(
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(

                padding: EdgeInsets.only(left: 20,right: 20),
                children: <Widget>[


                  SizedBox(height: 40),

                  Center(
                    child: Text('Please verify your identity'.tr,
                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17),
                    ),


                  ),

                  SizedBox(height: 40,),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),

                        child: Text('FNB Card Number'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

                      )

                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                          ),
                        ]),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        setState(() {

                        });

                      },


                      decoration: InputDecoration(
                        focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.black,
                        labelStyle: TextStyle(color: Colors.black),),

                    ),
                  ),
SizedBox(height:5,),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),

                        child: Text('National ID'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

                      )

                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                          ),
                        ]),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        setState(() {

                        });

                      },


                      decoration: InputDecoration(
                        focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.black,
                        labelStyle: TextStyle(color: Colors.black),),

                    ),


                  ),

                  SizedBox(height:330,),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: size.width * 0.9,
                      child: ClipRRect(
                        child: SizedBox(height: 50, child:  ElevatedButton(
                          // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                          // color: Colors.deepOrange,
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context)=> create()),
                            );
                          },
                          child: Text(
                            'Continue'.tr,
                            style:
                            TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xff8d0000)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(25),
                                    side: BorderSide(color: Color(0xff8d0000))
                                ),)
                          ),
                        )),
                      )),




                ],

              ),
            ),),

        ));
  }
}