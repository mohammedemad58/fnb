import 'package:flutter/material.dart';
import 'package:get/get.dart';


class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar (

            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
              onPressed: ()=> Navigator.pop(context),

            ),
            backgroundColor:Color(0xff8d0000) ,
            centerTitle: true,
            title: Text ('Notifications'.tr),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),

          ),

          body:
          Container(
            child: Container(

              child: ListView(

                padding: EdgeInsets.only(left: 20,right: 20),
                children: <Widget>[


                  SizedBox(height:30),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Color(0xff8d0000)),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfffff3f3),
                    ),
                    child: Column(
                      children:<Widget> [

                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              child: Text('Important message!'.tr,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color:Color(
                                  0xff8d0000))),padding: EdgeInsets.only(left: 5),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),

                        SizedBox(height: 15,),

                        Row(
                          children: [
                           Expanded(child:Container(
                             child: Text('Please come to the bank as soon as possible to fill more information about your loan request'.tr,style: TextStyle(fontSize: 18,)),padding: EdgeInsets.only(left: 5),
                           ), ),
                          ],
                        ),

                        SizedBox(height: 15,),


                      ],
                    ),
                  ),




                ],),),),



        ));
  }
}
