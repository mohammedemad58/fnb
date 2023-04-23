import 'package:flutter/material.dart';
import 'package:fnb/pages/certificate.dart';
import 'package:fnb/pages/depcalculator.dart';
import 'package:fnb/pages/loaninst.dart';
import 'package:fnb/pages/loanrequest.dart';
import 'package:fnb/pages/mycertificates.dart';
import 'package:fnb/pages/payments.dart';
import 'package:fnb/pages/currencies.dart';
import 'package:fnb/pages/profile.dart';
import 'package:fnb/pages/telecom.dart';
import 'package:fnb/view/newsroom.dart';
import 'package:fnb/pages/location.dart';
import 'package:fnb/pages/queuerequest.dart';
import 'package:fnb/pages/settings.dart';
import 'package:fnb/pages/loanamount.dart';
import 'package:fnb/pages/notification.dart';
import 'package:get/get.dart';


class homePage extends StatefulWidget {


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


  homePage(
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
  State<homePage> createState() => _homePageState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);

}

class _homePageState extends State<homePage> {

  var _index = 0;


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


  _homePageState(
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

  bool _isVisible = false;
  TextEditingController pass = new TextEditingController();


  var acc='****************';
  var bal='****';

  void show(){
    if(pass.text!='0000')
      {
        acc='****************';
        bal='****';
      }
    else
      {
        acc=accountnum1;
        bal=balance1;
      }

  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(


   /*   darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,*/
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff8d0000),
          centerTitle: true,
          title: Text ('FNB'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder:
                    (context)=> notification()),
                );

              },
            )
          ],
        ),

        drawer: Drawer(

          width: 235,
          backgroundColor: Color(0xff8d0000),
          child: ListView(
            children:<Widget> [

              DrawerHeader(

                child:
                    Container(

                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/fnb2.png'),


                          )
                      ),
                    )
                 ),

              ListTile(

                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> queue(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                  );

                },

                title: Text("Queuing request".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),
              ListTile(

                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> payments(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                  );
                },

                title: Text("Payments".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),
              ListTile(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> depcalculator()),
                  );

                },

                title: Text("Deposit calculator".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),
              ListTile(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> currencies(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                  );

                },

                title: Text("Currencies".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),
              ListTile(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> newsroom(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                  );

                },

                title: Text("Newsroom".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),
              ListTile(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> location()),
                  );

                },

                title: Text("Locations".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),
              ListTile(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=> settings(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                  );

                },

                title: Text("Settings".tr, style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.white30,
                indent: 15,
                endIndent:15,
              ),

            ],

          ),
        ),



        body:

    DefaultTabController(
    length: 4,
    child: Column(
    children: <Widget> [

    TabBar(

    padding: EdgeInsets.fromLTRB(4, 10, 4, 0),
    unselectedLabelColor: Color(0xff8d0000),
    indicator: BoxDecoration(border: Border(top: BorderSide(width: 1.0, color: Color(0xff8d0000),),)),
    labelColor: Color(0xff8d0000),
    labelPadding: EdgeInsets.only(right: 10,left: 10),





    tabs: [
    Tab(text: "Accounts".tr,),
    Tab(text: "Cards".tr,),
    Tab(text: "Loans".tr,),
      Tab(text: "Certificates".tr,),
    ],
    ),

    Expanded(
    child: TabBarView(
    children: [

          Column(
            
          children:<Widget> [
            SizedBox(height: 20,),
            Container(
              width: 350,
              height: 110,
              decoration: BoxDecoration(

                border: Border.all(width: 1, color: Colors.black26),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children:<Widget> [

                  ClipRRect(
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                    child: Image(image: AssetImage('images/fnb3.png'),),
                  ),

                  Column(
                  children:<Widget> [
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('$type Account',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),


                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('$acc',style: TextStyle(fontSize: 17,)),
                    ),

                    Divider(
                      height:5,
                      thickness: 5,
                      endIndent: 0,
                      indent: 0,
                      color: Colors.black,
                    ),

                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.only(right: 80),
                      child: Text('$bal $money',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),


                  ],
                  ),

                ],
              ),
            ),
            TextButton(
              child: Text(
                'Show/hide'.tr,
                style: TextStyle(
                    fontSize: 14, color: Colors.black),
              ),
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });

              },
            ),
      Visibility(
        visible: _isVisible,
        child: Container(
          width: 190,
          child:TextField(
          controller: pass,
          obscureText: true,
          decoration: InputDecoration(
           /* border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),*/
            border: InputBorder.none,
            labelStyle: TextStyle(color: Colors.black,decoration: TextDecoration.none,),
            hintText: 'Enter your pass'.tr,

            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              color: Color(0xff8d0000),
              onPressed: () {

                //String text = pass.text;
                setState(() {
                  show();
                  if(pass.text=='0000')
                    {
                      pass.clear();
                      _isVisible = !_isVisible;
                    }
                });
                //
              },
            ),
          ),
        ) ,)





      ),


          ],
          ),

ListView(children: [

    Column(
    children:<Widget> [
      SizedBox(height: 20,),
      Row(children:<Widget> [
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Text('My card'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
        )
      ],),

SizedBox(height: 20,),
      Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff000417),
              Color(0xff1e2023),
            ],
          ),
        ),
        child:
        Column(children: [

          Row(children:<Widget> [
            SizedBox(width: 40),
            Container(child: Text('Credit',style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
            SizedBox(width: 149),
            Container(
              child:Image(image: AssetImage('images/fnb1.png'),height: 80,width: 100),
            ),
          ],
          ),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 40),
              child:Image(image: AssetImage('images/chip.png'),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child:Text('****  *****  *****  ****',style: TextStyle(fontSize: 19,color: Colors.white)),
            ),
          ],
          ),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 240),
              child:Text('EXP ../..',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
          ),
          SizedBox(height: 15,),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 15),
              child:Text('Name',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
          ),
        ]),
      ),
      SizedBox(height: 20,),
      Row(children:<Widget> [
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Text('Cards offers'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
        )
      ],),
      SizedBox(height: 20,),


      Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff272d34),
              Color(0xffc7c7c7),
            ],
          ),
        ),
        child:
        Column(children: [

          Row(children:<Widget> [
            SizedBox(width: 40),
            Container(child: Text('Debit',style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
            SizedBox(width: 157),
            Container(
              child:Image(image: AssetImage('images/fnb1.png'),height: 80,width: 100),
            ),
          ],
           ),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 40),
              child:Image(image: AssetImage('images/chip.png'),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child:Text('****  *****  *****  ****',style: TextStyle(fontSize: 19,color: Colors.white)),
            ),
          ],
          ),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 240),
              child:Text('EXP ../..',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
          ),
          SizedBox(height: 15,),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 15),
              child:Text('Name',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
          ),
        ]),
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            padding:EdgeInsets.only(left: 30) ,
            child:Text('Maximum Credit Limit : 250,000 EGP'.tr,style: TextStyle(fontSize: 17)) ,),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Container(
            padding:EdgeInsets.only(left: 30) ,
            child:Text('Grace period : up to 57 days for purchase'.tr,style: TextStyle(fontSize: 17)) ,),
        ],
      ),
      SizedBox(height: 15,),
Divider(
  indent: 0,
  endIndent: 0,
  thickness: 4,
),
      SizedBox(height: 15,),
      Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          gradient: LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffb29c00),
              Color(0xffffd100),
            ],
          ),
        ),
        child:
        Column(children: [

          Row(children:<Widget> [
            SizedBox(width: 40),
            Container(child: Text('Gold',style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
            SizedBox(width: 162),
            Container(
              child:Image(image: AssetImage('images/fnb1.png'),height: 80,width: 100),
            ),
          ],
          ),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 40),
              child:Image(image: AssetImage('images/chip.png'),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child:Text('****  *****  *****  ****',style: TextStyle(fontSize: 19,color: Colors.white)),
            ),
          ],
          ),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 240),
              child:Text('EXP ../..',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
          ),
          SizedBox(height: 15,),
          Row(children:<Widget> [
            Container(
              margin: EdgeInsets.only(left: 15),
              child:Text('Name',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
          ),
        ]),
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            padding:EdgeInsets.only(left: 30) ,
            child:Text('Maximum Credit Limit : 100,000 EGP'.tr,style: TextStyle(fontSize: 17)) ,),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Container(
            padding:EdgeInsets.only(left: 30) ,
            child:Text('Online card usage : available'.tr,style: TextStyle(fontSize: 17)) ,),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Container(
            padding:EdgeInsets.only(left: 30) ,
            child:Text('Card usage : locally and abroad'.tr,style: TextStyle(fontSize: 17)) ,),
        ],
      ),
      SizedBox(height: 40,),




    ],
    ),],),



    ListView(children: [
      Column(
        children:<Widget> [

          SizedBox(height: 60),
          Center(child: Image(image: AssetImage('images/loan.png'),width: 150,height: 150,)),
          SizedBox(height: 30),

          Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: size.width * 0.85,
              child: ClipRRect(
                child: SizedBox(height: 55, child:  ElevatedButton(

                  // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                  // color: Colors.deepOrange,
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> loanamount(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                    );
                  },
                  child: Text(
                    'Loan amount calculator'.tr,
                    style:
                    TextStyle(color: Colors.white, fontSize: 18),
                  ),

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff8d0000)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(25),
                            side: BorderSide(color: Colors.white)
                        ),)
                  ),
                )),
              )),

          SizedBox(height: 7,),

          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.85,
              child: ClipRRect(
                child: SizedBox(height: 55, child:  ElevatedButton(

                  // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                  // color: Colors.deepOrange,
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> LoanCalculator()),
                    );
                  },
                  child: Text(
                    'Loan installment calculator'.tr,
                    style:
                    TextStyle(color: Colors.white, fontSize: 18),
                  ),

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff8d0000)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(25),
                            side: BorderSide(color: Colors.white)
                        ),)
                  ),
                )),
              )),


          SizedBox(height: 7,),

          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.85,
              child: ClipRRect(
                child: SizedBox(height: 55, child:  ElevatedButton(
                  // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                  // color: Colors.deepOrange,
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> loanrequest(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                    );
                  },
                  child: Text(
                    'My loans requests'.tr,
                    style:
                    TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff8d0000)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(25),
                            side: BorderSide(color: Colors.white)
                        ),)
                  ),
                )),
              )),



        ],
      ),

    ],),


ListView(children: [
      Column(
        children:<Widget> [

          SizedBox(height: 60),
            Center(child: Image(image: AssetImage('images/coins.png'),)),
          SizedBox(height: 20),
          Center(child: Text('Time to invest!'.tr,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          SizedBox(height: 10),
          Center(child: Text('It seems that you dont have any investment products yet!'.tr,style: TextStyle(fontSize: 19,),textAlign: TextAlign.center,)),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: size.width * 0.9,
              child: ClipRRect(
                child: SizedBox(height: 50, child:  ElevatedButton(
                  // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                  // color: Colors.deepOrange,
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> certificate(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                    );
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
                            side: BorderSide(color: Colors.white)
                        ),)
                  ),
                )),
              )),
          SizedBox(height: 0),
          Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: size.width * 0.9,
              child: ClipRRect(
                child: SizedBox(height: 50, child:  ElevatedButton(
                  // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                  // color: Colors.deepOrange,
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> mycertificates(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                    );
                  },
                  child: Text(
                    'My certificates'.tr,
                    style:
                    TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff8d0000)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(25),
                            side: BorderSide(color: Colors.white)
                        ),)
                  ),
                )),
              )),



        ],
      ),
],)

    ],
    ),

    ),





    ],
    ),
    ),




        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(label: "Home".tr,icon: Icon(Icons.home),),
              BottomNavigationBarItem(label: "Currencies".tr, icon: Icon(Icons.currency_exchange),),
              BottomNavigationBarItem(label: "Payments".tr, icon: Icon(Icons.payment),),
              BottomNavigationBarItem(label: "Profile".tr, icon: Icon(Icons.account_circle_rounded),),

            ],


            currentIndex: _index,
            unselectedItemColor: Colors.black,
            selectedItemColor: Color(0xff8d0000),
            backgroundColor: Colors.white,

            onTap: (index) {



              setState(() {

                _index = index;
                if (_index == 0)  Navigator.push(context, MaterialPageRoute(builder:
                    (context)=> homePage(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                );
                if (_index == 1)  Navigator.push(context, MaterialPageRoute(builder:
                    (context)=> currencies(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                );
                if (_index == 2)    Navigator.push(context, MaterialPageRoute(builder:
                    (context)=> payments(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                );

                if (_index == 3)  Navigator.push(context, MaterialPageRoute(builder:
                    (context)=> profile(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                );


              });

            }
        ),
      ),
    );
  }
}