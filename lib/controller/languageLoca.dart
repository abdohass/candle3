import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/languaesmodel.dart';
import '../sreens/costCalculation.dart';
import 'localization.dart';
import 'package:shared_preferences/shared_preferences.dart';



String languageCode ='langeCode' ;
const String English ='en';
const String Arabic ='ar';

Future<Locale>setlocale(String languageCode)async{

  SharedPreferences prefrences = await SharedPreferences.getInstance();
  prefrences.getString(languageCode);
  return switchlangs(languageCode);
}
 Locale switchlangs(lang) {
  Locale trans ;
  switch (lang){
    case  English:
      trans = Locale(English , 'US');
      break;
    case Arabic:
      trans = Locale(Arabic , 'EG');
      break;
    default :
      trans = Locale(English , 'US');
      break;
  }
  return trans;
 }

 Future getlocale()async {
  SharedPreferences preferences =  await SharedPreferences.getInstance();
  String languageCode = preferences.getString('langeCode')?? Arabic ;
  return switchlangs(languageCode);
 }

  changeLang(BuildContext context ,  Language lang) async {
  Locale trans = await setlocale(lang.languageCode);
  MyApp.setLocalLang(context, trans);
  }