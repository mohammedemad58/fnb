import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnb/pages/changepass.dart';
import 'package:fnb/pages/f1.dart';
import 'package:fnb/pages/personaldata.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import '../theme/theme_manager.dart';
import '../theme_service.dart';

ThemeManager _themeManager = ThemeManager();

class settings extends StatefulWidget {

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


  settings(
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
  State<settings> createState() => _settingsState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);
}

class _settingsState extends State<settings> {


  bool _swVal = false;
  // void _onChange (bool val) {
  //   setState(() {
  //     _swVal = val;
  //   });
  // }
  //ThemeModel themeNotifier;
  // void _incrementCounter() {
  //   ThemeBuilder.of(context).changeTheme();
  //   setState(() {
  //   });
  // }



  String dropdown = 'English';
  var items = ['English','Arabic'];

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


  _settingsState(
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

  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars;
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
            title: Text ('Settings'.tr),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),

          ),

          body:
          Column(
            children: <Widget>[
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Text('Change password'.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 30),
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                      onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=> changepass(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password)),
                        );

                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.black,
                indent: 40,
                endIndent:40,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Text('Dark mode'.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 30),
                   // child: IconButton(
                   //  icon: const Icon(
                   // moonIcon,
                   // color: Colors.grey,
                   //
                   // ),
                   // onPressed: (){
                   //
                   //    },

    //),
                   child: Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
                     _themeManager.toggleTheme(newValue);

                  },activeColor: Color(0xff8d0000),
  ),



                  )
                ],
              ),

              SizedBox(height: 15,),
              Divider
                (
                thickness: 1.5,
                height: 0,
                color: Colors.black,
                indent: 40,
                endIndent:40,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Text('Change language'.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 30),
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
                           if(dropdown =="English")
                             {
                               Get.updateLocale(Locale('en','US'));
                             }
                           else{
                             Get.updateLocale(Locale('ar','SU'));
                           }
                        });
                      },

                    ),

                  )
                ],
              ),




            ],
          ),











        ));
  }
}
