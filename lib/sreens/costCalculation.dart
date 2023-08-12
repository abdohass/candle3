// import 'package:flutter/material.dart';
// import 'package:untitled/constcolor/color.dart';
// import '../sreens/firstscreen.dart';
// import '../widgets/text_field_title.dart';
// import '../widgets/text_title.dart';
//
//
// class CostCalculation extends StatefulWidget {
//   const CostCalculation({super.key});
//
//   @override
//   State<CostCalculation> createState() => _CostCalculationState();
// }
//
// class _CostCalculationState extends State<CostCalculation> {
//   double waxPrice =0;
//   double waxwWeight =0;
//   String resultWaxca='0';
//
//   double oilPrice =0;
//   double oilWight=0;
//   String resultOilca ="0";
//
//   int jarnum= 0;
//   double jarPrice =0;
//   String resultjar ='0';
//
//   double wickPrice = 0;
//   int wicknum =0;
//   String resultwick ='0';
//   String unitwax ="g";
//   String costpercandle='0';
//   String waxpricepercandle='0';
//   String oilpricepercandle='0';
//
//   //
//   TextEditingController waxPricelController = TextEditingController();
//   TextEditingController waxwightController = TextEditingController();
//
//   TextEditingController oilPriceController = TextEditingController();
//   TextEditingController oilWightController = TextEditingController();
//
//   TextEditingController jarPriceController = TextEditingController();
//   TextEditingController jarnumController = TextEditingController();
//
//   TextEditingController wickPriceController = TextEditingController();
//   TextEditingController wicknumController = TextEditingController();
//
//
//
//   @override
//   void initState() {
//
//     super.initState();
//     //myBox.Hive.box('my box');
//     //resultwax= '0';
//     //resultfo = '0';
//     waxwightController.addListener(updatwaxwight);
//     waxPricelController.addListener(updateoilprice);
//
//     oilWightController.addListener(updateoilwight);
//     oilPriceController.addListener(updateoilprice);
//
//     jarnumController.addListener(updatejarnum);
//  jarPriceController.addListener(updatejarprice);
//
//     wickPriceController.addListener(updatewickprice);
//     wicknumController.addListener(updatewicknum);
//
//
//
//   }
//   void  updatewaxPrice() {
//     setState(() {
//       if (waxPricelController.text != '') {
//         waxPrice= double.parse(waxPricelController.text);
//       }
//       else {
//         waxPrice = 0;
//       }
//       print('total wight $waxPrice');
//     });
//   }
//   void  updatwaxwight() {
//     setState(() {
//       if (waxwightController.text != '') {
//         waxwWeight= double.parse(waxwightController.text);
//       }
//       else {
//         waxwWeight =  0;
//         print('total wight $waxwWeight');
//       }
//     });
//   }
//   void  updateoilprice() {
//     setState(() {
//       if (oilPriceController.text != '') {
//         oilPrice =double.parse(oilPriceController.text) ;
//       }
//       else {
//         oilPrice= 0;
//       }
//     });
//   }
//   void  updateoilwight() {
//     setState(() {
//       if (oilWightController.text != '') {
//         oilWight =double.parse(oilWightController.text) ;
//       }
//       else {
//         oilWight= 0;
//       }
//     });
//   }
//   void  updatejarprice() {
//     setState(() {
//       if (jarPriceController.text != '') {
//         jarPrice =double.parse(jarPriceController.text) ;
//       }
//       else {
//         jarPrice= 0;
//       }
//     });
//   }
//   void  updatejarnum() {
//     setState(() {
//       if (jarnumController.text != '') {
//         jarnum =int.parse(jarnumController.text) ;
//       }
//       else {
//         jarnum= 0;
//       }
//     });
//   }
//   void  updatewickprice() {
//     setState(() {
//       if (wickPriceController.text != '') {
//         wickPrice =double.parse(wickPriceController.text) ;
//
//       }
//       else {
//         wickPrice= 0;
//       }
//     });
//   }
//   void  updatewicknum() {
//     setState(() {
//       if (wicknumController.text != '') {
//         wicknum = int.parse(wicknumController.text) ;
//       }
//       else {
//         wicknum= 0;
//       }
//     });
//   }
//   void costcal(){
//
//     setState(() {
//       resultWaxca = (waxPrice*waxwWeight).toString();
//
//       resultOilca =(oilPrice*oilWight).toString();
//       resultjar =(jarnum*jarPrice).toString();
//       resultwick=(wickPrice*wicknum).toString();
//       //
//       //  costpercandle=resultWaxca+resultOilca+resultjar+resultwick;
//        waxpricepercandle=resultWaxca;
//       oilpricepercandle=resultOilca;
//
//
//       if (double.parse(resultWaxca) > 1000 ||
//           double.parse(resultOilca) > 1000 ||
//           double.parse(resultjar) > 1000 ||
//           double.parse(resultwick) > 1000) {
//         // Convert to grams if the result is greater than 1000
//         if (double.parse(resultWaxca) > 1000) {
//           resultWaxca = (double.parse(resultWaxca) / 1000).toStringAsFixed(2) +'k';
//           resultWaxca = (double.parse(resultWaxca) / 1000).toStringAsFixed(2) + "k" ;
//         }
//         if (double.parse(resultOilca) > 1000) {
//           resultOilca = (double.parse(resultOilca) / 1000).toStringAsFixed(2) + "k";
//           resultOilca = (double.parse(resultOilca) / 1000).toStringAsFixed(2) + "k" ;
//         }
//         if (double.parse(resultjar) > 1000) {
//           resultjar = (double.parse(resultjar) / 1000).toStringAsFixed(2) ;
//           resultjar = (double.parse(resultjar) / 1000).toStringAsFixed(2) ;
//         }
//         if (double.parse(resultwick) > 1000) {
//           resultwick = (double.parse(resultwick) / 1000).toStringAsFixed(2)  ;
//           resultwick = (double.parse(resultwick) / 1000).toStringAsFixed(2)  ;
//         }
//       }
//
//
//       //
//       // resultWaxca = (waxPrice * waxwWeight).toString();
//       // resultOilca = (oilPrice * oilWight).toString();
//       // resultjar = (jarnum * jarPrice).toString();
//       // resultwick = (wickPrice * wicknum).toString();
//
// // Check if any result is greater than 1000
// //       if (double.parse(resultWaxca) > 1000 ||
// //           double.parse(resultOilca) > 1000 ||
// //           double.parse(resultjar) > 1000 ||
// //           double.parse(resultwick) > 1000) {
// //         // Convert to grams if the result is greater than 1000
// //         if (double.parse(resultWaxca) > 1000) {
// //           resultWaxca = (double.parse(resultWaxca) / 1000).toStringAsFixed(2);
// //         }
// //         if (double.parse(resultOilca) > 1000) {
// //           resultOilca = (double.parse(resultOilca) / 1000).toStringAsFixed(2) ;
// //         }
// //         if (double.parse(resultjar) > 1000) {
// //           resultjar = (double.parse(resultjar) / 1000).toStringAsFixed(2) ;
// //         }
// //         if (double.parse(resultwick) > 1000) {
// //           resultwick = (double.parse(resultwick) / 1000).toStringAsFixed(2) ;
// //         }
// //       }
//
// // Convert the result strings to doubles
//       double doubleResultWaxca = double.parse(resultWaxca.split(' ')[0]);
//       double doubleResultOilca = double.parse(resultOilca.split(' ')[0]);
//       double doubleResultjar = double.parse(resultjar.split(' ')[0]);
//       double doubleResultwick = double.parse(resultwick.split(' ')[0]);
//
// // Calculate costpercandle by adding the doubles
//       double costpercandleDouble = doubleResultWaxca + doubleResultOilca + doubleResultjar + doubleResultwick;
//
// // Convert the result back to a string with two decimal places
//       costpercandle = costpercandleDouble.toStringAsFixed(2);
//
//
//
//
//
//     });
//
//     // setState(() {
//     //   resultjar = (jarPrice*jarnum).toString();
//     //
//     // });
//
//
//
//
//
//
//
// }
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CustomColor.secondary,
//       appBar: AppBar(
//         title: const Text('cost calculator'),
//       ),
//       body:
//
//       SingleChildScrollView(
//         child:Column(
//           children: [
//
//             Container(
//               height: 400,
//               child: GridView.count(
//                 primary: false,
//                 padding: const EdgeInsets.all(20),
//                 crossAxisSpacing: 5,
//                 mainAxisSpacing: 5,
//                 crossAxisCount: 2,
//                 physics:NeverScrollableScrollPhysics(),
//
//
//
//
//                 children: <Widget>[
//                   Container(
//                     // height: 50,
//                     padding: const EdgeInsets.only(top: 0),
//                     color: Colors.teal[200],
//
//                     //color: Colors.teal[100],
//                     height: 5,
//                     // padding: const EdgeInsets.all(8),
//                     // color: Colors.teal[100],
//                     child:  Column(
//                       children: [
//                         const Text("wax calc"),
//                         Expanded(
//                           child: TextFieldTitle(
//
//                              title: 'wax wight',
//     costcall:() {
//                              setState(() {
//     costcal();
//                              });  },
//
//
//                              controller: waxwightController,
//
//
//
//                            ),
//                         ),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: 'wax price',
//                             costcall :() {
//                               setState(() {
//
//                               costcal();
//                               // updatewaxPrice();
//                               // updatwaxwight();
//                               // print("waxxx$waxPrice");
//                               // print("wighhh$waxwWeight");
//
//                           });
//
//                             }, controller: waxPricelController,),
//                         ),
//                         TextTitle(title: 'wax claculation', value: resultWaxca+unitwax),
//                         // TextFieldTitle(
//                         //   title: 'total candle',
//                         //   onChange: (v) { setState(() {
//                         //
//                         //     print('total wight');
//                         //
//                         //   });
//                         //
//                         //   }, controller: totalCandlesController,),
//
//                       ],
//                     ),
//
//
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     color: Colors.teal[200],
//                     child:  Column(
//                       children: [
//                         const Text("oil calc"),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: 'oil wight',
//                             costcall: () { setState(() {
//                               costcal();
//
//
//
//                             });
//
//                             }, controller: oilWightController,),
//                         ),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: 'oil price',
//                             costcall: () { setState(() {
//
//                               costcal();
//
//                             });
//
//                             }, controller: oilPriceController,),
//                         ),
//                         TextTitle(title: 'oil claculation', value: resultOilca),
//
//
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(top: 10),
//                     color: Colors.teal[200],
//                     child:  Column(
//                       children: [
//                         const Text("jar calc"),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: 'number of jar',
//                             costcall: () { setState(() {
//
//                               costcal();
//
//                             });
//
//                             }, controller: jarnumController,),
//                         ),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: 'jar price',
//                             costcall: () { setState(() {
//
//                               costcal();
//
//                             });
//
//                             }, controller: jarPriceController,),
//                         ),
//                         TextTitle(title: 'jar claculation', value:  resultjar),
//
//
//                       ],
//                     ),
//                   ),
//                   Container(
//
//                     padding: const EdgeInsets.only(top: 10),
//                     color: Colors.teal[200],
//                     child:  Column(
//                       children: [
//                         const Text("wick calc"),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: ' number of wick ',
//                             costcall: () { setState(() {
//
//                              costcal();
//                              updatewickprice();
//                              updatewicknum();
//
//                             });
//
//                             }, controller: wicknumController,),
//                         ),
//                         Expanded(
//                           child: TextFieldTitle(
//                             title: 'wick price',
//                             costcall: () { setState(() {
//
//                               costcal();
//
//                             });
//
//                             }, controller: wickPriceController,),
//                         ),
//                         TextTitle(title: 'wicl claculation', value: resultwick),
//
//
//                       ],
//                     ),
//                   ),
//
//
//                 ],
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.teal[200],
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(color: CustomColor.secondary)),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   TextTitle(title: 'Cost per candle', value: costpercandle ),
//                   TextTitle(title: 'Wax price per_candle ', value:waxpricepercandle),
//                   TextTitle(title: 'Oil price prr_candle', value:oilpricepercandle),
//                 ],
//               ),
//             ),
//           ],
//         )
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:untitled/constcolor/color.dart';
import '../sreens/firstscreen.dart';
import '../widgets/text_field_title.dart';
import '../widgets/text_title.dart';
import '../controller/localization.dart';


class CostCalculation extends StatefulWidget {
  String waxWight ;
  String oilwight;
 int totalCandles ;
 String unitwax ;
 String unitfo ;
   CostCalculation(this.waxWight, this.oilwight , this.totalCandles , this.unitwax , this.unitfo );

  @override
  State<CostCalculation> createState() => _CostCalculationState();
}

class _CostCalculationState extends State<CostCalculation> {
  double waxPrice =0;
  double waxwWeight =0;
  String resultWaxca='0';

  double oilPrice =0;
  double oilWight=0;
  String resultOilca ="0";

  int jarnum= 0;
  double jarPrice =0;
  String resultjar ='0';

  double wickPrice = 0;
  int wicknum =0;
  String resultwick ='0';
  String unitwax ="g";
  String costpercandle='0';
  String totalcandlescost ='0';
  String waxpricepercandle='0';
  String oilpricepercandle='0';

  //
  TextEditingController waxPricelController = TextEditingController();
  TextEditingController waxwightController = TextEditingController();

  TextEditingController oilPriceController = TextEditingController();
  TextEditingController oilWightController = TextEditingController();

  TextEditingController jarPriceController = TextEditingController();
  TextEditingController jarnumController = TextEditingController();

  TextEditingController wickPriceController = TextEditingController();
  TextEditingController wicknumController = TextEditingController();



  @override
  void initState() {

    super.initState();
    //myBox.Hive.box('my box');
    //resultwax= '0';
    //resultfo = '0';


    waxwightController.addListener(updatwaxwight);
    waxPricelController.addListener(updatewaxPrice);
    waxwightController.text= widget.waxWight;



    oilWightController.addListener(updateoilwight);
    oilPriceController.addListener(updateoilprice);
    oilWightController.text=widget.oilwight;

    jarnumController.addListener(updatejarnum);
    jarPriceController.addListener(updatejarprice);
    jarnumController.text=widget.totalCandles.toString();

    wickPriceController.addListener(updatewickprice);
    wicknumController.addListener(updatewicknum);
    wicknumController.text=widget.totalCandles.toString();



  }
  void  updatewaxPrice() {
    setState(() {
      if (waxPricelController.text != '') {
        waxPrice= double.parse(waxPricelController.text);
      }
      else {
        waxPrice = 0;
      }
      print('total wight $waxPrice');
    });
  }
  void  updatwaxwight() {
    setState(() {
      if (waxwightController.text != '') {
        waxwWeight= double.parse(waxwightController.text);
      }
      else {
        waxwWeight =  0;
        print('total wight $waxwWeight');
      }
    });
  }
  void  updateoilprice() {
    setState(() {
      if (oilPriceController.text != '') {
        oilPrice =double.parse(oilPriceController.text) ;
      }
      else {
        oilPrice= 0;
      }
    });
  }
  void  updateoilwight() {
    setState(() {
      if (oilWightController.text != '') {
        oilWight =double.parse(oilWightController.text) ;
      }
      else {
        oilWight= 0;
      }
    });
  }
  void  updatejarprice() {
    setState(() {
      if (jarPriceController.text != '') {
        jarPrice =double.parse(jarPriceController.text) ;
      }
      else {
        jarPrice= 0;
      }
    });
  }
  void  updatejarnum() {
    setState(() {
      if (jarnumController.text != '') {
        jarnum =int.parse(jarnumController.text) ;
      }
      else {
        jarnum= 0;
      }
    });
  }
  void  updatewickprice() {
    setState(() {
      if (wickPriceController.text != '') {
        wickPrice =double.parse(wickPriceController.text) ;

      }
      else {
        wickPrice= 0;
      }
    });
  }
  void  updatewicknum() {
    setState(() {
      if (wicknumController.text != '') {
        wicknum = int.parse(wicknumController.text) ;
      }
      else {
        wicknum= 0;
      }
    });
  }
  void costcal(){

    setState(() {


      if(widget.unitwax == "kg") {

        resultWaxca = ((waxPrice*waxwWeight)).toStringAsFixed(2);

      }


      else {

        resultWaxca = ((waxPrice*waxwWeight)/1000).toStringAsFixed(2);

      }



      if(widget.unitfo == "kg") {

        resultOilca= ((jarPrice*oilWight)).toStringAsFixed(2);

      }


      else {

        resultOilca = ((oilPrice*oilWight)/1000).toStringAsFixed(2);

      }

      resultOilca =((oilPrice*oilWight)/1000).toStringAsFixed(2);

      resultjar =(jarnum*jarPrice).toStringAsFixed(2);
      resultwick=(wickPrice*wicknum).toStringAsFixed(2);



//Convert the result strings to doubles
      double doubleResultWaxca = double.parse(resultWaxca.split(' ')[0]);
      double doubleResultOilca = double.parse(resultOilca.split(' ')[0]);
      double doubleResultjar = double.parse(resultjar.split(' ')[0]);
      double doubleResultwick = double.parse(resultwick.split(' ')[0]);

// Calculate costpercandle by adding the doubles
      double costpercandleDouble = doubleResultWaxca + doubleResultOilca + doubleResultjar + doubleResultwick;

// Convert the result back to a string with two decimal places
      costpercandle = costpercandleDouble.toStringAsFixed(2);
      totalcandlescost =(double.parse(costpercandle)/(widget.totalCandles).toDouble()).toStringAsFixed(2) ;

      waxpricepercandle=(double.parse(resultWaxca)/(widget.totalCandles)).toStringAsFixed(2);
      oilpricepercandle=(double.parse(resultOilca)/(widget.totalCandles)).toStringAsFixed(2);


    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff90B5EA),
      //backgroundColor: CustomColor.secondary,
      appBar: AppBar(
        title: Text (" ${getLang(context, "cost calculator")}"),
      ),
      body:

      SingleChildScrollView(
          child:Column(
            children: [

              Container(
                height:MediaQuery.of(context).size.height*.5,
                child: GridView.count(
                  childAspectRatio:1,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  physics:NeverScrollableScrollPhysics(),




                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.3),

                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),


                      padding: const EdgeInsets.only(top: 0),

                      child:  Column(
                        children: [
                          Text(" ${getLang(context, "wax")}" ,
                          style :TextStyle(color: Colors.green.shade900))
                          ,
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, 'wax wight')}"
                           ,


                              controller: waxwightController,
                              onchang :() {

                               setState(() {
                                 widget.unitwax ="g";
                                costcal();

                              });


                              },),
                          ),
                          SizedBox(height: 5),
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, 'wax price')},"
                              ,
                             onchang: () { setState(() {

                                costcal();

                                });

                              print(resultWaxca);
                              }, controller: waxPricelController,),
                          ),
                          TextTitle(title: " ${getLang(context, 'wax claculation')}"
                          , value: resultWaxca),
                        ],
                      ),

                    ),
                    Container( decoration: BoxDecoration(
                        // color: Colors.teal[200],
                        color: Colors.white.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white)),

                      // padding: const EdgeInsets.all(8),

                      child:  Column(
                        children: [
                          Text(" ${getLang(context, "oil")}"),

                          Expanded(

                            child: TextFieldTitle(
                              title: " ${getLang(context, 'oil wight')}"
                              ,
                              onchang: () { setState(() {
                                widget.unitfo ='g';
                                costcal();
                              });

                              }, controller: oilWightController,),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, 'oil price')}"
                              ,
                              onchang: () { setState(() {

                                costcal();

                              });

                              }, controller: oilPriceController,),
                          ),
                          TextTitle(title: " ${getLang(context, 'oil claculation')}"
                          , value: resultOilca),


                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                      // padding: const EdgeInsets.only(top: 10),

                      child:  Column(
                        children: [
                          Text(" ${getLang(context, "jar")}"),
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, 'number of jar')}"
                              ,
                              onchang: () { setState(() {

                                costcal();

                              });

                              }, controller: jarnumController,),
                          ),
                          SizedBox(height: 5),
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, 'jar price')}",
                              onchang: () { setState(() {

                                costcal();

                              });

                              }, controller: jarPriceController,),
                          ),
                          TextTitle(title: " ${getLang(context, "jar claculation")}"
                          , value:  resultjar),


                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),

                      // padding: const EdgeInsets.only(top: 10),

                      child:  Column(
                        children: [
                          Text(" ${getLang(context, " wick")}"),
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, " number of wick")}",
                              onchang: () { setState(() {

                                costcal();
                                updatewickprice();
                                updatewicknum();

                              });

                              }, controller: wicknumController,),
                          ),
                          SizedBox(height: 5),
                          Expanded(
                            child: TextFieldTitle(
                              title: " ${getLang(context, "wick price")}",
                              onchang: () { setState(() {

                                costcal();

                              });

                              }, controller: wickPriceController,),
                          ),
                          TextTitle(title:" ${getLang(context, "wicl claculation")}"
                          , value: resultwick),


                        ],
                      ),
                    ),


                  ],
                ),
              ),
             SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                width: MediaQuery.of(context).size.width*.7,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: CustomColor.secondary)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextTitle(title:" ${getLang(context, "cost per candle")}", value: totalcandlescost ),
                    TextTitle(title: " ${getLang(context, "total candle cost")}", value: costpercandle ),
                    TextTitle(title: " ${getLang(context, "Wax price per_candle")}", value:waxpricepercandle),
                    TextTitle(title:  " ${getLang(context, "Oil price prr_candle")}", value:oilpricepercandle),

                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}




