import 'package:flutter/material.dart';
import 'package:fnb/pages/main.dart';

class ProviderData extends ChangeNotifier{
  //ThemeData _themeData = darkMode? ThemeData.dark(): ThemeData.light();
  // getTheme(){
  //   return _themeData;
  // }

  // setTheme(ThemeData theme)
  // {
  //   _themeData=theme;
  //   notifyListeners();
  // }
  String sectionID='';
  String subSection='';
  String activatyID='';
  String webViewURL='';

  void setSectionID({required String val})
  {
    sectionID=val;
    notifyListeners();
  }

}