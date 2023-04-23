import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fnb/pages/otp_screen.dart';
import 'package:get/get.dart';



class authtype extends StatefulWidget {


  var data;
  var name;
  var dob1;
  var nationality;
  var gender;
  var mart;
  var add;
  var emailadd;
  var homenum;
  var mobilenum;
  var jobb;
  var jobbadd;
  var income;
  var type;
  var id;
  var accountnum1;
  var balance1;
  var money;
  var username;
  var password;


  authtype(
      {
        required this.data,
        required this.name,
        required this.dob1,
        required this.nationality,
        required this.gender,
        required this.mart,
        required this.add,
        required this.emailadd,
        required this.homenum,
        required this.mobilenum,
        required this.jobb,
        required this.jobbadd,
        required this.income,
        required this.type,
        required this.id,
        required this.accountnum1,
        required this.balance1,
        required this.money,
        required this.username,
        required this.password});

  @override
  State<authtype> createState() => _authtypeState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);
}

class _authtypeState extends State<authtype> {

  var data;
  var name;
  var dob1;
  var nationality;
  var gender;
  var mart;
  var add;
  var emailadd;
  var homenum;
  var mobilenum;
  var jobb;
  var jobbadd;
  var income;
  var type;
  var id;
  var accountnum1;
  var balance1;
  var money;
  var username;
  var password;


  _authtypeState(
      {
        required this.data,
        required this.name,
        required this.dob1,
        required this.nationality,
        required this.gender,
        required this.mart,
        required this.add,
        required this.emailadd,
        required this.homenum,
        required this.mobilenum,
        required this.jobb,
        required this.jobbadd,
        required this.income,
        required this.type,
        required this.id,
        required this.accountnum1,
        required this.balance1,
        required this.money,
        required this.username,
        required this.password});


  EmailOTP myauth = EmailOTP();

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
            title: Text ('Authentication'.tr),

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
                    child: Text('Choose the authentication type to log-in'.tr,
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17),
                    ),
                  ),

                  SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Column(
                        children:<Widget> [
                          Center(

                            child: ElevatedButton(
                              onPressed: (){



                              },

                              child: Icon(Icons.tag_faces,color: Colors.black,size: 60),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 120),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(style: BorderStyle.solid,width: 1,color: Colors.black38)

                                ),

                                padding: EdgeInsets.only(left: 0),
                                primary: Colors.white,


                              ),
                            ),

                          ),

                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Face id'.tr,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),



                      SizedBox(width: 17),




                      Column(
                        children:<Widget> [
                          Center(

                            child: ElevatedButton(
                              onPressed: () async {


                                myauth.setConfig(
                                    appEmail: "FNB@gmail.com",
                                    appName: "Future National Bank",
                                    userEmail: emailadd,
                                    otpLength: 4,
                                    otpType: OTPType.digitsOnly);
                                if (await myauth.sendOTP() == true) {
                                  Fluttertoast.showToast(
                                    msg: 'otp sent!'.tr,
                                    backgroundColor:Color(0xff1e2023),
                                    textColor: Colors.white,
                                    toastLength: Toast.LENGTH_SHORT,
                                  );
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OtpScreen(myauth: myauth, data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)

                                      ));
                                } else {
                                  Fluttertoast.showToast(
                                    msg: 'invalid email!'.tr,
                                    backgroundColor:Color(0xff1e2023),
                                    textColor: Colors.white,
                                    toastLength: Toast.LENGTH_SHORT,
                                  );

                                }

                              },

                              child: Icon(Icons.password,color: Colors.black,size: 50),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 120),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(style: BorderStyle.solid,width: 1,color: Colors.black38)

                                ),

                                padding: EdgeInsets.only(left: 0),
                                primary: Colors.white,


                              ),
                            ),

                          ),

                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('OTP'.tr,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),

                  ],
                  ),




                ],

              ),
            ),),

        ));
  }
}
