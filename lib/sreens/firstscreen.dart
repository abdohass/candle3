
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:untitled/database/template.dart';
import 'package:untitled/models/languaesmodel.dart';
import 'package:untitled/sreens/links.dart';
import 'package:untitled/sreens/myTemplates.dart';

import '../constcolor/color.dart';
import '../sql/database_helper.dart';
import '../widgets/myTextfeild.dart';
import '../widgets/text_field_title.dart';
import '../widgets/text_title.dart';
import 'costCalculation.dart';
import '../controller/localization.dart';
import '../controller/languageLoca.dart';
import 'dart:io';
import '../sreens/drawer.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<Template> templates = [];
//int? value = 0;
// /Box myBox ;
  double fragranceOil =0;
  double totalWight = 0;
 int   totalCandles  = 1;
String resultfo = '0';
String resultwax = '0' ;
String unitWax = 'g';
String unitfo ='g';


  TextEditingController fragranceOilController = TextEditingController();
  TextEditingController totalWightController = TextEditingController();
  TextEditingController totalCandlesController = TextEditingController();

  //fragranceOilController.addListener((updatfo));
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




      resultwax = (double.parse(resultwax) > 1000 ? (double.parse(resultwax) / 1000).toStringAsFixed(2)  : (double.parse(resultwax).toStringAsFixed(2)).toString());
      resultfo = (double.parse(resultfo) > 1000 ? (double.parse(resultfo)/ 1000).toStringAsFixed(2)+'k' :  (double.parse(resultfo).toStringAsFixed(2)).toString());
    });
    setState(() {


    });

  }

  void saveData(double resultWax, double resultFo, int totalCandles) async {
    if (fragranceOilController.text.isEmpty || totalWightController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please fill all the fields."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    await DatabaseHelper.instance.insertTemplate(resultWax, resultFo, totalCandles);

    setState(() {
      resultwax = resultWax.toString();
      resultfo = resultFo.toString();
    });
  }


  @override
  void initState() {

    super.initState();
    //getLocal();
    DatabaseHelper.instance.getAllTemplates().then((templates) {
      setState(() {
        // Convert the list of Map to a list of Template objects
        this.templates = templates.map((template) => Template.fromJson(template)).toList();
      });
    });

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: CustomColor.secondary,
      backgroundColor: Color(0xff90B5EA),

      appBar: AppBar(
        title:  Text(" ${getLang(context, "candle calculator")}"),
      ),
      drawer:  AppDrawer(),


      body:

      ListView(
        padding: EdgeInsets.only( top: MediaQuery.of(context).size.height*.03,
        right: MediaQuery.of(context).size.height*.06,
        left:MediaQuery.of(context).size.height*.06 ),
        children: [
          Container(

            // width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
            decoration: BoxDecoration(
                // color: CustomColor.containerColor,
                color: Colors.white.withOpacity(.3),

                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                myTextfeild(
                   title :" ${getLang(context, "wight candle")}"
                  ,
                   changing:() {
                     calculate();
                   },
                   controller: totalWightController , ),

                myTextfeild(

                 title: " ${getLang(context, "oil candle")}",
                  changing: (){
                   calculate();
                  },
                  controller: fragranceOilController , ),

                  myTextfeild(
                      title: " ${getLang(context, "total candles")}",
                      changing: (){
                        calculate();
                      },
                      controller: totalCandlesController),

              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/15,),
          Container(
            // width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.01
            , bottom: MediaQuery.of(context).size.height*.01),

            // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.3),

                // color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextTitle(title: " ${getLang(context, "wax weight")}", value: resultwax+unitWax ),
                TextTitle(title: " ${getLang(context, "fragrance weight")}", value:resultfo+unitfo),
              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height/80,),

          Container(
            width: MediaQuery.of(context).size.width/20,
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.2),

            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            // decoration: BoxDecoration(
            //     // color: CustomColor.containerColor,
            //     color: Colors.white.withOpacity(.3),
            //
            //     borderRadius: BorderRadius.circular(20),
            //     border: Border.all(color:Colors.white)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.blueAccent) ,
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                      return CostCalculation(resultwax, resultfo, totalCandles ,unitWax, unitfo);
                    },));
                  },
                  child: Text(" ${getLang(context, "costCalculation")}"),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.blueAccent) ,

                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed:() {
                    saveData(
                        double.parse(resultwax),
                        double.parse(resultfo),
                    int.parse(totalCandlesController.text),);
                  },
                  child: Text(" ${getLang(context, "save")}"),
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