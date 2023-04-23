
import 'package:email_otp/email_otp.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fnb/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Otp extends StatelessWidget {

  const Otp({
    Key? key,
    required this.otpController,
  }) : super(key: key);
  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 70,
      child: TextFormField(
        controller: otpController,
        keyboardType: TextInputType.number,
        showCursor: false,

        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(
          hintText: ('0'),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff8d0000))),

        ),
        onSaved: (value) {},
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  final EmailOTP myauth;


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


  OtpScreen(
      {
        required this.myauth,
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
        required this.password,});

  @override
  State<OtpScreen> createState() => _OtpScreenState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();

  String otpController = "1234";

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


  _OtpScreenState(
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
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff8d0000),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: Color(0xff8d0000),
            centerTitle: true,
            title:
            Text('OTP authentication'.tr, style: TextStyle(color: Colors.white)),
          ),
          body: Container(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset('images/pass.png',scale: 5.0),
                      const SizedBox(
                        height: 20,
                      ),

                      Center(child: Text(
                        "A verification code has been sent to".tr,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                      ),),
                      Center(child: Text(
                        "$emailadd",
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color(0xff8d0000) ),textAlign: TextAlign.center,
                      ),),

                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Otp(
                            otpController: otp1Controller,
                          ),
                          Otp(
                            otpController: otp2Controller,
                          ),
                          Otp(
                            otpController: otp3Controller,
                          ),
                          Otp(
                            otpController: otp4Controller,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      SizedBox(height: 60,),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          width: size.width * 0.9,
                          child: ClipRRect(
                            child: SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                                  // color: Colors.deepOrange,
                                  onPressed: () async {
                                    if (await widget.myauth.verifyOTP(
                                        otp: otp1Controller.text +
                                            otp2Controller.text +
                                            otp3Controller.text +
                                            otp4Controller.text) ==
                                        true) {
                                      Fluttertoast.showToast(
                                        msg: 'Welcome ☺'.tr,
                                        backgroundColor:Color(0xff1e2023),
                                        textColor: Colors.white,
                                        toastLength: Toast.LENGTH_SHORT,
                                      );
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  homePage(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)));
                                    } else {
                                      Fluttertoast.showToast(
                                        msg: 'Incorrect OTP!'.tr,
                                        backgroundColor:Color(0xff1e2023),
                                        textColor: Colors.white,
                                        toastLength: Toast.LENGTH_SHORT,
                                      );
                                    }
                                  },
                                  child: Text(
                                    'Confirm'.tr,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          Color(0xff8d0000)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            side: BorderSide(
                                                color: Color(0xff8d0000))),
                                      )),
                                )),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          )),);
  }
}
