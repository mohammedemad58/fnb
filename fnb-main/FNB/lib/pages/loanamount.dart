import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;


class loanamount extends StatefulWidget {
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


  loanamount(
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
        required this.password,});

  @override
  State<loanamount> createState() => _loanamountState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);
}

class _loanamountState extends State<loanamount> {

  TextEditingController amount = new TextEditingController();
  TextEditingController period = new TextEditingController();
  TextEditingController rate = new TextEditingController();

  num monthly=0;
  num payable=0;
  num interest=0;

  void calculate(){

    interest=(((num.parse(amount.text)~/100)*num.parse(rate.text))~/12)*num.parse(period.text);
    payable=num.parse(amount.text)+interest;
    monthly=payable~/num.parse(period.text);

  }

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


  _loanamountState(
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
        required this.password,});



  Future SendData() async {

    var url = Uri.parse('https://inconspicuous-pairs.000webhostapp.com/loanamount.php') ;

    final response = await http.post(url, body:{

      "amount":amount.text,
      "period":period.text,
      "rate":rate.text,
      "totalinterest":interest.toString(),
      "totalpayable":payable.toString(),
      "monthly": monthly.toString(),
      "accountnumber":accountnum1,

    });
    try {
      var data = json.decode(response.body);
      print(data);
      if (data == "Error") {
      }
      else if (data == "Success") {
        setState(() {

          Fluttertoast.showToast(
            msg: 'Your loan request has been uploaded successfully please wait for the response that shows in your notification page!'.tr,
            backgroundColor:Color(0xff1e2023),
            textColor: Colors.white,
            toastLength: Toast.LENGTH_SHORT,
          );

            period.text='';
            rate.text='';
            amount.text='';
            monthly=0;
            payable=0;
            interest=0;

        });
      }
      if (data == "Already Exists") {

        Fluttertoast.showToast(
          msg: 'Your maximum requests for loans are 3, you need to visit your nearest branch to solve this problem!'.tr,
          backgroundColor:Color(0xff1e2023),
          textColor: Colors.white,
          toastLength: Toast.LENGTH_SHORT,
        );

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
        appBar: AppBar (

          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
            onPressed: ()=> Navigator.pop(context),

          ),
          backgroundColor:Color(0xff8d0000) ,
          centerTitle: true,
          title: Text ('Loans'.tr),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),

        ),
        body:
        ListView(
          children: [

            Expanded(child:
            Column(

              children: <Widget>[
                SizedBox(height: 30),

                Center( child: Text('Loan amount calculator'.tr,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),),

                SizedBox(height: 30,),

                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),

                      child: Text('Loan amount'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

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
                    controller: amount,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
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
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children:<Widget> [
    Container(
      padding: EdgeInsets.only(left: 15),
      child: Text('Min 5000 EGP'.tr,style: TextStyle(fontSize: 15)),
    ),
    Container(
      padding: EdgeInsets.only(right: 15),
      child: Text('Max 1,500,000 EGP'.tr,style: TextStyle(fontSize: 15)),
    ),

  ],
),
                Divider(thickness: 4,height: 40),



                SizedBox(height: 5,),

                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),

                      child: Text('Loan period'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

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
                    controller: period,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Min 6 months'.tr,style: TextStyle(fontSize: 15)),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Text('Max 120 months'.tr,style: TextStyle(fontSize: 15)),
                    ),

                  ],
                ),
                Divider(thickness: 4,height: 40),

                SizedBox(height: 5,),

                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),

                      child: Text('Interest rate (Annual %)'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

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
                    controller: rate,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Min 16%'.tr,style: TextStyle(fontSize: 15)),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Text('Max 21%'.tr,style: TextStyle(fontSize: 15)),
                    ),

                  ],
                ),
                Divider(thickness: 4,height: 40),


                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: size.width * 0.9,
                    child: ClipRRect(
                      child: SizedBox(height: 50, child:  ElevatedButton(
                        // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                        // color: Colors.deepOrange,
                        onPressed: () async {

                          setState(() {
                            if(int.parse(amount.text)>=5000 && int.parse(amount.text)<=1500000 && int.parse(period.text)>=6 && int.parse(period.text)<=120 && int.parse(rate.text)>=16 &&int.parse(rate.text)<=21){
                              calculate();
                            }
                            else
                              {
                                Fluttertoast.showToast(
                                  msg: 'please check the constraints of the form!'.tr,
                                  backgroundColor:Color(0xff1e2023),
                                  textColor: Colors.white,
                                  toastLength: Toast.LENGTH_SHORT,

                                );
                              }

                          });

                        },
                        child: Text(
                          'Calculate'.tr,
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
SizedBox(height: 20),
                Container(
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xff8d0000)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff8d0000),
                  ),
                  child: Column(
                    children:<Widget> [

                      SizedBox(height: 10,),
                      Container(
                        child: Text('Your monthly payments'.tr,textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 20)),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Text('EGP $monthly',textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 18)),
                      ),
                      SizedBox(height: 5,),
                      Divider(color: Colors.white,indent: 30,endIndent: 30,thickness: 1),
                      SizedBox(height: 5,),

                      Row(
                        children:<Widget> [

                          SizedBox(width: 35),
                          Column(children:<Widget> [

                            Container(
                              child: Text('Total payable'.tr,textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 20)),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Text('EGP $payable',textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                          ],),

                          SizedBox(width: 35),
                          Column(children:<Widget> [

                            Container(
                              child: Text('Total interest'.tr,textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 20)),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Text('EGP $interest',textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                                                   ],),


                        ],
                      ),

                    ],
                  ),

                ),
                SizedBox(height: 20,),
                Center( child: Text('* Please note that your maximum requests for loans are 3 times'.tr,style: TextStyle(fontSize: 11.5,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center),),
                SizedBox(height: 8,),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: size.width * 0.9,
                    child: ClipRRect(
                      child: SizedBox(height: 50, child:  ElevatedButton(
                        // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                        // color: Colors.deepOrange,
                        onPressed: () async {

                          if(amount.text!=''&&period.text!=''&&rate.text!=''&&monthly!=0)
                          {

                            setState(() {
                              SendData();
                              Fluttertoast.showToast(
                                msg: 'Your loan request has been uploaded successfully please wait for the response that shows in your notification page!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 4,
                              );

                              period.text='';
                              rate.text='';
                              amount.text='';
                              monthly=0;
                              payable=0;
                              interest=0;
                            });

                          }
                          else
                            {
                              Fluttertoast.showToast(
                                msg: 'please check the constraints of the form!'.tr,
                                backgroundColor:Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }

                        },
                        child: Text(
                          'Apply for this'.tr,
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


                SizedBox(height: 60,),






              ],
            ),
            ),

          ],
        ),

      ),
    );
  }
}
