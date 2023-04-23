import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fnb/pages/terms.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;



class certificate extends StatefulWidget {

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


  certificate(
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
  State<certificate> createState() => _certificateState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);
}

class _certificateState extends State<certificate> {

  terms() {
    // TODO: implement faqscode
    throw UnimplementedError();
  }

  bool _swVal = false;


  void _onChange (bool val) {
    setState(() {
      _swVal = val;
    });
  }




  String dropdown = 'Platinum 3 years (Monthly 16%)';
  var items = ['Platinum 3 years (Monthly 16%)','Platinum 3 years (Half yearly 16.5%)','Platinum 3 years (Yearly 17.5%)'];

  TextEditingController amount = new TextEditingController();
  TextEditingController pass2 = new TextEditingController();

  String startdate = '';
  DateTime date1 = DateTime.now();
  Future<Null> selectinDate(BuildContext context) async {

    final DateTime? picked =await showDatePicker(
      context:context,
      initialDate: date1,

      firstDate: DateTime(1960),
      lastDate: DateTime(2040),);
    if(picked != null && picked != date1) {
      setState(() {
        date1 = picked;
        print(date1.toString());
      });
    }
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




  _certificateState(
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

var date;
  Future SendData() async {

    var url = Uri.parse('https://inconspicuous-pairs.000webhostapp.com/cert.php') ;

    final response = await http.post(url, body:{

      "certtype":dropdown,
      "certamount":amount.text,
      "certdate":date,

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
            msg: 'Acceptable process!'.tr,
            backgroundColor:Color(0xff1e2023),
            textColor: Colors.white,
            toastLength: Toast.LENGTH_SHORT,
          );


        });
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
    date="${date1.year}-${date1.month}-${date1.day}".toString();
    print(date);
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
          title: Text ('Certificate'.tr),
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

                SizedBox(height: 30,),

                Row(
                  children:<Widget> [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Select product'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(children: [
                  Container(
                    child: DropdownButton(
                      value: dropdown,
                      borderRadius: BorderRadius.circular(15),
                      icon: const Icon(Icons.arrow_drop_down_sharp),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newvalue){
                        setState(() {
                          dropdown = newvalue!;
                        });
                      },

                    ),
                  )

                ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                SizedBox(height: 5,),

                Divider(thickness: 4,height: 40),

                SizedBox(height: 10),



                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),

                      child: Text('Amount'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

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
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
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
                SizedBox(height: 5,),
                Divider(thickness: 4,height: 40),
                SizedBox(height: 5,),

                SizedBox(height: 15,),
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Enter your password (4 digits)'.tr,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ),
                ],),
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
                    controller: pass2,
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
                SizedBox(height: 5,),
                Divider(thickness: 4,height: 40),
                SizedBox(height: 5,),


                Row(
                  children:<Widget> [

                    SizedBox(width: 15),
                    Text('Start date'.tr,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    SizedBox(width: 100),
                    IconButton(onPressed: () {selectinDate(context);}, icon: Icon(Icons.date_range)),
                    Text('$date',style: TextStyle(fontSize: 16),)
                  ],
                ),

                Divider(thickness: 4,height: 40),
                SizedBox(height: 5,),


                Row(
                  children: <Widget>[

                    Container(
                      padding:EdgeInsets.only(left: 15),

                      child: Text('I have read and agree to the terms\nof FNB services'.tr,style: TextStyle(fontSize: 15)),
                    ),

                    SizedBox(width: 20,),
                    Switch(value: _swVal, onChanged: _onChange,activeColor: Color(0xff8d0000),),


                  ],
                ),
                SizedBox(height: 0,),
                TextButton(
                  child: const Text('Show terms',
                    style: TextStyle(
                        fontSize: 15, color: Color(0xff8d0000)),
                  ),
                  onPressed: () {
                    showAlertDialog(context);



                  },
                ),




                SizedBox(height: 50,),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: size.width * 0.9,
                    child: ClipRRect(
                      child: SizedBox(height: 50, child:  ElevatedButton(
                        // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                        // color: Colors.deepOrange,
                        onPressed: () async {
                          if(amount.text!=''&&pass2.text!=''&&_swVal==true)
                          {
                            if(pass2.text=='0000') {
                              if (int.parse(balance1) >=
                                  int.parse(amount.text)) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    // return object of type Dialog
                                    return AlertDialog(
                                      //  title: new Text("Important!",textAlign: TextAlign.center,style: TextStyle(color: Color(0xff8d0000))),
                                      titlePadding: EdgeInsets.zero,
                                      title: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Container(
                                            alignment: FractionalOffset
                                                .topRight,
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: const Icon(Icons.clear),
                                            ),
                                          ),
                                          Text("Important!".tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Color(
                                                  0xff8d0000))),
                                        ],
                                      ),
                                      content: new Text(
                                        "Are you sure you want to apply for this certificate informations?".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15,
                                            fontWeight: FontWeight.bold),),
                                      actions: <Widget>[

                                        new ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff8d0000)),
                                          child: new Text("Yes".tr),
                                          onPressed: () {

                                            SendData();


                                            Fluttertoast.showToast(
                                              msg: 'Acceptable process!'.tr,
                                              backgroundColor: Color(
                                                  0xff1e2023),
                                              textColor: Colors.white,
                                              toastLength: Toast
                                                  .LENGTH_SHORT,
                                            );

                                            amount.text = '';
                                            pass2.text='';
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                              else {
                                Fluttertoast.showToast(
                                  msg: 'No enough balance in your account!'.tr,
                                  backgroundColor: Color(0xff1e2023),
                                  textColor: Colors.white,
                                  toastLength: Toast.LENGTH_SHORT,
                                );
                              }
                            }
                            else
                            {
                              Fluttertoast.showToast(
                                msg: 'Incorrect password'.tr,
                                backgroundColor: Color(0xff1e2023),
                                textColor: Colors.white,
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            }



                          }
                          else{
                            Fluttertoast.showToast(
                              msg: 'Please fill-in the form and agree to the terms!'.tr,
                              backgroundColor:Color(0xff1e2023),
                              textColor: Colors.white,
                              toastLength: Toast.LENGTH_SHORT,
                            );
                          }


                        },
                        child: Text(
                          'Apply'.tr,
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
