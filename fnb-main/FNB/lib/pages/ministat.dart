import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ministat extends StatefulWidget {
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


  ministat(
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
  State<ministat> createState() => _ministatState(data: data, name: name, dob1: dob1, nationality: nationality, gender: gender, mart: mart, add: add, emailadd: emailadd, homenum: homenum, mobilenum: mobilenum, jobb: jobb, jobbadd: jobbadd, income: income, type: type, id: id, accountnum1: accountnum1, balance1: balance1, money: money, username: username, password: password);
}

class _ministatState extends State<ministat> {

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


  _ministatState(
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

  Future<List<dynamic>> fetchTransactions(accountnum1) async {
    final response = await http.get(Uri.parse('https://inconspicuous-pairs.000webhostapp.com/getTransaction.php?accountnumber=$accountnum1'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON.
      return jsonDecode(response.body);
    } else {
      // If the server returns an error response, throw an exception.
      throw Exception('Failed to load transactions');
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
            title: Text ('Payments'.tr),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),

          ),

          body:
    ListView(
    children: [

    Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SizedBox(height: 15),

    Center( child: Text('Last transactions'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
      SizedBox(height: 10),
    SizedBox(height: 650,
    child:
          FutureBuilder<List<dynamic>>(
            future: fetchTransactions(accountnum1),


            builder: (context, snapshot) {
              if (snapshot.hasData) {

              return ListView.builder(

                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index)
                  {

                  return  Column(
                    children: [

                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 5),
                    child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.5, color: Color(0xfffcc8c8)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xfffcc8c8),
                              ),
                              child: Column(
                                children:<Widget> [

                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Transaction id: ${snapshot.data?[index]['transid']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Account status: Active',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),


                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Account type: $type',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  To: ${snapshot.data?[index]['tooo']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Transfer type: ${snapshot.data?[index]['type']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Amount: ${snapshot.data?[index]['amount']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Remaining balance: ${snapshot.data?[index]['rbalance']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Date: ${snapshot.data?[index]['date1']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('  Time: ${snapshot.data?[index]['time1']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),padding: EdgeInsets.only(left: 5),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10,),

                                ],
                              ),
                            ),

                  ),],);


                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return Container(
                 alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    color: Color(0xff8d0000),


                ));
            },
          ),
    ),],),),],),

        ));
  }
}
