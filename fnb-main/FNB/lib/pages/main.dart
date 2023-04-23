import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fnb/languages.dart';
import 'package:fnb/pages/f1.dart';
import 'package:fnb/pages/splashscreen.dart';
import 'package:fnb/languages.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import '../theme/theme_constants.dart';
import '../theme/theme_manager.dart';
import '../theme_service.dart';

//bool darkMode= false;
void main(){
  runApp(const MyApp());

}
ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    //ThemeModel themeModel;
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: ThemeService().lightTheme,
        //darkTheme: ThemeService().darkTheme,
        //themeMode: ThemeService().getThemeMode(),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _themeManager.themeMode,
        home: Scaffold(
          body: f1(),
        ),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ar', 'SU'),
        ],
        translations: Langauges(),
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      );

  }
}




