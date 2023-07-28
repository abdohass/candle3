import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'costCalculation.dart';
import 'localization.dart';
import 'package:shared_preferences/shared_preferences.dart';



String languageCode ='langeCode' ;
String English ='EN';
String Arabic ='AR';

Future<Locale>setlocale(String languageCode)async{

  SharedPreferences prefrences = await SharedPreferences.getInstance();
  prefrences.getString(languageCode);
  return switchlangs(languageCode);
}
 Locale switchlangs(lang) {
  Locale trans ;
  switch (lang){
    case 1:
      trans = Locale(English , 'US');
      break;
    case 2:
      trans = Locale(Arabic , 'AR');
      break;
    default :
      trans = Locale(English , 'US');
      break;
  }
  return trans;
 }

 Future getlocale()async {
  SharedPreferences preferences = await await SharedPreferences.getInstance();
  String languageCode = preferences.getString('langeCode')??English ;
  return switchlangs(languageCode);
 }

  changeLang(BuildContext context ,  lang) async {
  Locale trans = await setlocale(lang);
  MyApp.setLocalLang(context, trans);
  }