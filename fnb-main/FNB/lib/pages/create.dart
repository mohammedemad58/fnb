import 'package:flutter/material.dart';
import 'package:fnb/pages/terms.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class create extends StatefulWidget {
  const create({Key? key}) : super(key: key);

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {

  bool _swVal = false;
  bool buttonEnabled = false;
  bool ver1 =false;
  bool ver2 =false;

  terms() {
    // TODO: implement faqscode
    throw UnimplementedError();
  }

  void _onChange (bool val) {
    setState(() {
      _swVal = true;
    });
  }


  enableButton(){
    buttonEnabled = true;
  }
  disableButton(){
    buttonEnabled = false;
  }

  TextEditingController accountnumber1 = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpass = new TextEditingController();
  Future SendData() async {
    var url = Uri.parse('https://inconspicuous-pairs.000webhostapp.com/SignupMobile.php') ;

    final response = await http.post(url, body:{

      "accountnumber":accountnumber1.text,
      "username":username.text,
      "password":password.text,

    });
    try {
      var data = json.decode(response.body);
      print(data);
      if (data == "Error") {
      }
      else if (data == "Success") {
        setState(() {

          accountnumber1.text='';
          username.text='';
          password.text='';
          confirmpass.text='';
          _swVal=false;



        });
      }
      if (data == "Already Exists") {


      }
      else {
        print("error".tr);
      }
    }
    catch (e) {
      print(e);
    }
  }

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
            title: Text ('Create account'.tr),

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

                        child: Text('FNB account number'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

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
                      controller: accountnumber1,
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        setState(() {

                        });

                      },



                      decoration: InputDecoration(

                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black,decoration: TextDecoration.none,),

                      ),
                    ),
                  ),
                  SizedBox(height:5,),



                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),

                        child: Text('Username'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

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
                      controller: username,
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        setState(() {

                        });

                      },



                      decoration: InputDecoration(

                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black,decoration: TextDecoration.none,),

                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child:FlutterPwValidator(
                      controller: username,
                      minLength: 8,
                      failureColor:  Color(0xff8d0000),
                      width: 280,
                      height: 30,
                      defaultColor:  Color(0xff8d0000),
                      successColor: Colors.green,
                      onSuccess: (){
                        ver1 = true;
                      },
                      onFail: (){
                        ver1=false;
                      },

                    ),),
                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),

                        child: Text('Password'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

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
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      cursorColor: Colors.black,


                      decoration: InputDecoration(

                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black,decoration: TextDecoration.none,),

                      ),

                    ),
                  ),

              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                child:FlutterPwValidator(
                  controller: password,
                  minLength: 8,
                  failureColor:  Color(0xff8d0000),
                  uppercaseCharCount: 1,
                  numericCharCount: 1,
                  specialCharCount: 1,
                  width: 280,
                  height: 80,
                  defaultColor:  Color(0xff8d0000),
                  successColor: Colors.green,
                  onSuccess: (){
                      ver2 = true;
                  },
                  onFail: (){
                    ver2=false;
                  },

                ),
              ),
                  SizedBox(height: 5,),

                  SizedBox(height:15,),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),

                        child: Text('Confirm password'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

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
                    child: TextFormField(
                      controller: confirmpass,

                      obscureText: true,
                      cursorColor: Colors.black,

                      decoration: InputDecoration(

                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black,decoration: TextDecoration.none,),

                      ),

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(left: 15,top: 20),
                        child: Text('I have read and agree to the terms\nof FNB services'.tr,style: TextStyle(fontSize: 15)),
                      ),

                     Container(
                       padding: EdgeInsets.only(right: 15),
                       child:Switch(value: _swVal, onChanged: _onChange,activeColor: Color(0xff8d0000),),
                     )


                    ],
                  ),
                  SizedBox(height: 0,),
                  TextButton(
                    child: const Text(
                      'Show terms',
                      style: TextStyle(
                          fontSize: 15, color: Color(0xff8d0000)),
                    ),
                    onPressed: () {
                      showAlertDialog(context);



                    },
                  ),


                  SizedBox(height:60,),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: size.width * 0.9,
                      child: ClipRRect(
                        child: SizedBox(height: 50, child:  ElevatedButton(

                          // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                          // color: Colors.deepOrange,
                          onPressed:() {

                            if(password.text==confirmpass.text && _swVal==true && username.text!='' && accountnumber1.text!='' && ver1==true && ver2==true){
                              SendData();
                              Fluttertoast.showToast(
                                msg: 'Account created successfully!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                              }
                            else if(password.text!=confirmpass.text && _swVal==true){
                              Fluttertoast.showToast(
                                msg: 'Please check that you entered the confirm password correctly!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }
                            else if(password.text==confirmpass.text && _swVal==false && password.text!=''&&confirmpass.text!='')
                              {
                                Fluttertoast.showToast(
                                  msg: 'Please agree to the terms and conditions of FNB services!'.tr,
                                  backgroundColor:Color(0xff1e2023),
                                  textColor: Colors.white,
                                  toastLength: Toast.LENGTH_SHORT,
                                );
                              }
                            else if(username.text=='' || password.text==''||confirmpass=='')
                            {
                              Fluttertoast.showToast(
                                msg: 'You miss to enter something!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }
                            else if(password.text!=confirmpass.text && _swVal==false)
                            {
                              Fluttertoast.showToast(
                                msg: 'Please check that you entered the confirm password correctly and agree to the terms and conditions of FNB services!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }
                            else
                            {
                              Fluttertoast.showToast(
                                msg: 'Something is wrong!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }


                          },
                          child: Text(
                            'Create'.tr,
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