
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled/models/languaesmodel.dart';
import 'package:untitled/sreens/links.dart';
import 'package:untitled/sreens/myTemplates.dart';

import '../constcolor/color.dart';
import '../constcolor/textStyle.dart';
import '../widgets/text_field_title.dart';
import '../widgets/text_title.dart';
import 'costCalculation.dart';
import 'localization.dart';
import 'languageLoca.dart';
import 'dart:io';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//int? value = 0;
late Box myBox ;
  double fragranceOil =0;
  double totalWight = 0;
 int totalCandles  = 1;
String resultfo = '0';
String resultwax = '0' ;
String unitWax = 'g';
String unitfo ='g';


   TextEditingController fragranceOilController = TextEditingController();
  TextEditingController totalWightController = TextEditingController();
  TextEditingController totalCandlesController = TextEditingController();

  //fragranceOilController.addListener((updatfo));

  //void inis

   void calculate(  ) {
    print('fragrangeee $fragranceOil');
    print('total wight $totalWight');
    double? wax ;
    double? fo ;
    setState((){
      wax = ((totalWight! / (1 + fragranceOil!))) ;
      fo = (totalWight - wax!) ;
      resultwax = (wax!  * totalCandles).toString()! ;
      resultfo = (fo! * totalCandles).toString();
      if(double.parse(resultwax) >1000) {
        unitWax = 'kg';}
        else{
          unitWax ='g';

      }

      if(double.parse(resultfo) >1000) {
        unitfo = 'kg';}
      else{
        unitfo ='g';

      }
      print(resultfo);
      print(resultwax);
      // print(resultfo);
                                         


      resultwax = (double.parse(resultwax) > 1000 ? (double.parse(resultwax) / 1000).toStringAsFixed(2)  : (double.parse(resultwax).toStringAsFixed(2)).toString());
      resultfo = (double.parse(resultfo) > 1000 ? (double.parse(resultfo)/ 1000).toStringAsFixed(2)+'k' :  (double.parse(resultfo).toStringAsFixed(2)).toString());
    });
    setState(() {
      //resultwax =((totalWight! / (1 + fragranceOil!))) ;//fragrance oil percent
      // resultfo = (totalWight - resultwax ) ; //oil

      //resultwax = resultwax! * totalCandles!;
      //resultfo = resultfo !*totalCandles!;


    });

  }


  @override
  void initState() {

    super.initState();
     //myBox.Hive.box('my box');
    resultwax= '0';
    resultfo = '0';
    totalWightController.addListener(updatewightwax);
    fragranceOilController.addListener(updatfragoil);
    totalCandlesController.addListener(updatetotalcanle);}
    void  updatewightwax() {
      setState(() {
        if (totalWightController.text != '') {
         totalWight= double.parse(totalWightController.text);
        }
        else {
        totalWight = 0 ;
        }
        print('total wight $totalWight');
      });
    }
  void  updatfragoil() {
    setState(() {
      if (fragranceOilController.text != '') {
        fragranceOil= double.parse(fragranceOilController.text);
        fragranceOil= fragranceOil/100 ;
      }
      else {
       fragranceOil =  0 ;
       print('total wight $fragranceOil');
      }
    });
  }
  void  updatetotalcanle() {
    setState(() {
      if (totalCandlesController.text != '') {
        totalCandles =int.parse(totalCandlesController.text) ;
      }
      else {
        totalCandles=  1;
      }
    });
  }

  Widget myTextfeild (title , controller  ){

     return Column(
       children: [
         Text(
           title,
           style: CustomTextStyle.titleWhiteTextStyle,
         ),
         const SizedBox(
           height: 10,
         ),
         SizedBox(
           width:  300,
           child: TextField(
             controller: controller,
             maxLines: 1,
             onChanged: (_) {
               calculate() ;
             },
             style: CustomTextStyle.bodyTextStyle,
             decoration: InputDecoration(
                 fillColor: Colors.white,
                 filled: true,
                 contentPadding:
                 const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0)),
                 labelStyle: CustomTextStyle.bodyTextStyle),
           ),
         )
       ],
     );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondary,
      appBar: AppBar(
        title:  Text(" ${getLang(context, "candle calculator")}"),
      ),
      drawer: Drawer(


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
            return MyTemplets();
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
              return Links();
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
    ),


      body:
      ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                myTextfeild(
                     'wight candle',
                    totalWightController , ),
                    // onChange: (v) { setState(() {  calculate();
                    //
                    // });
                      // try {
                      //   setState(() {
                      //     this.value = int.tryParse(value);
                      //   });
                      // } catch (e) {
                      //   this.value = 0;
                       //   print(e);

                    // },
  // controller: talWtoightController,),
                myTextfeild(

                  'frag candle',
                  fragranceOilController , ),

                  myTextfeild("total candle", totalCandlesController),

                  //   title: 'fragranceoil candle',
                  //   onChange: (value) { setState(() {
                  // calculate();
                  //   });
                  //
                  //   }, controller: fragranceOilController,),
                  //
                
                // TextFieldTitle(
                //     title: 'total candle',
                //     onChange: (v) { setState(() {
                //       calculate();
                //       print('total wight');
                //
                //     });
                //
                //     }, controller: totalCandlesController,),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextTitle(title: 'wax wight', value: resultwax+unitWax ),
                TextTitle(title: 'fragrace  wight', value:resultfo+unitfo),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                      return CostCalculation(resultwax, resultfo, totalCandles ,unitWax, unitfo);
                    },));
                  },
                  child: Text('costCalculation'),
                ),

                //TextTitle(title: 'fragrace  wight', value:'$resultfo'),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}