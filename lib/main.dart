import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/database/hive_db.dart';
import 'package:untitled/sreens/firstscreen.dart';
import 'package:untitled/sreens/languageLoca.dart';
import 'package:untitled/sreens/localization.dart';
import 'package:untitled/widgets/text_field_title.dart';
import 'package:untitled/widgets/text_title.dart';

import 'constcolor/color.dart';
import 'database/templateAdapter.dart';
//import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? mySharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TemplateAdapter()); // Register the adapter for your Template model
  await Hive.openBox('myBox'); // Open the Hive box
  //HiveDB.init();

  mySharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocalLang(BuildContext context ,Locale? locale )async{
    _MyAppState? localeState = context.findAncestorStateOfType<_MyAppState>();
    localeState!.setlocale(locale);
  }
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setlocale(Locale? locale){
    if(locale!=null){
      setState(() {
        _locale = locale;
      });
    }
  }

  void getLocal()async {
    _locale = await getlocale();
    setState(() {

    });
    print(_locale?.languageCode);
  }

  void initState() {
    super.initState();
    getlocale();
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(

      ),
      localizationsDelegates:  [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: [
        Locale("en", ""),
        Locale("ar", ""),
      ],
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              mySharedPreferences!.setString("lang",currentLang.languageCode) ;
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },


    );
  }
}

