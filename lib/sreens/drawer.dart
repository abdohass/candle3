import 'package:flutter/material.dart';
import 'package:untitled/models/languaesmodel.dart';
import 'package:untitled/sreens/links.dart';
import '../sreens/firstscreen.dart';
import '../controller/languageLoca.dart';
import '../controller/localization.dart';
import 'myTemplates.dart';


class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(


      child: Column(
        children: [
          Container(
            height: 600,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text   (" ${getLang(context, "menu")}", style: TextStyle(fontSize: 30,
                      color: Colors.black)),

                ),
                ListTile(
                  leading: Icon(Icons.book_online_outlined),

                  title: Text(" ${getLang(context, "my templets")}"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return  MyTemplets(
                            // resultwax: resultwax,
                            // resultfo: resultfo,
                          );
                        }
                    ));



                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_outlined),
                  title:  Text(" ${getLang(context, "links candle academy")}"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return Links( );
                        }
                    ));


                  },
                ),


                // ListTile(
                //   title: const Text('Item 2'),
                //   onTap: () {
                //
                //   },
                // ),
                Divider(),
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent,splashColor:Color(0xff3a3ad2) ),
                  child: ExpansionTile(
                    leading: Icon(Icons.language),
                    title: Text(" ${getLang(context, "App language")}"),
                    children: <Widget>[
                      ListTile(

                        title: Text(" ${getLang(context, "English")}"),
                        onTap: () {
                          changeLang(context, Language(id: 1, name: "English", languageCode: "us"));
                        },
                      ),
                      ListTile(
                        title:  Text(" ${getLang(context, "Arabic")}"),
                        //style: TextStyle(color: Colors.black),),

                        onTap: () {
                          changeLang(context, Language(id: 1, name: "Arabic", languageCode: "ar"));

                        },
                      ),

                    ],

                  ),
                ),



              ],
            ),
          ),
        ],
      ),


    );
  }
}
