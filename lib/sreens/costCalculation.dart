import 'package:flutter/material.dart';
import 'package:untitled/constcolor/color.dart';
import '../sreens/firstscreen.dart';
import '../widgets/text_field_title.dart';
import '../widgets/text_title.dart';


class CostCalculation extends StatefulWidget {
  const CostCalculation({super.key});

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
    waxPricelController.addListener(updateoilprice);

    oilWightController.addListener(updateoilwight);
    oilPriceController.addListener(updateoilprice);

    jarnumController.addListener(updatejarnum);
 jarPriceController.addListener(updatejarprice);

    wickPriceController.addListener(updatewickprice);
    wicknumController.addListener(updatewicknum);



  }
  void  updatewaxPrice() {
    setState(() {
      if (waxPricelController.text != '') {
        waxPrice= double.parse(waxPricelController.text);
      }
      else {
        waxPrice = 0 ;
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
        waxwWeight =  0 ;
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
      resultWaxca = (waxPrice*waxwWeight).toString();

    });

    print(resultWaxca);
    print("$waxwWeight");




}







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondary,
      appBar: AppBar(
        title: const Text('cost calculator'),
      ),
      body:

      SingleChildScrollView(
        child:Column(
          children: [

            Container(
              height: 800,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                physics:NeverScrollableScrollPhysics(),




                children: <Widget>[
                  Container(
                    // height: 50,
                    padding: const EdgeInsets.only(top: 1),
                    color: Colors.teal[100],
                    child:  Column(
                      children: [
                        const Text("wax calc"),
                        Expanded(
                          child: TextFieldTitle(
                             title: 'wax wight',
    // onChanged: (_) {
    // costcal()) ;
    // //
    // //
    // / },
                            // onChange: (v) { setState(() {
                            //
                            //  print('wax wight');
                            //
                            //  });

                             controller: waxwightController, onChange: (String ) { costcal() ;},),
                        ),
                        Expanded(
                          child: TextFieldTitle(
                            title: 'wax price',
                            onChange: (v) { setState(() {

                              costcal();

                            });

                            }, controller: waxPricelController,),
                        ),
                        TextTitle(title: 'wax claculation', value: resultWaxca+unitwax),

                      ],

                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child:  Column(
                      children: [
                        const Text("oil calc"),
                        Expanded(
                          child: TextFieldTitle(
                            title: 'oil wight',
                            onChange: (v) { setState(() {

                              print('oil wight');

                            });

                            }, controller: oilWightController,),
                        ),
                        Expanded(
                          child: TextFieldTitle(
                            title: 'wax price',
                            onChange: (v) { setState(() {

                              print('wax pice');

                            });

                            }, controller: oilPriceController,),
                        ),
                        TextTitle(title: 'oil claculation', value: "resultoilcal "),


                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    color: Colors.teal[300],
                    child:  Column(
                      children: [
                        const Text("jar calc"),
                        Expanded(
                          child: TextFieldTitle(
                            title: 'number of jar',
                            onChange: (v) { setState(() {

                              print('jar price');

                            });

                            }, controller: jarnumController,),
                        ),
                        Expanded(
                          child: TextFieldTitle(
                            title: 'jar price',
                            onChange: (v) { setState(() {

                              print('jar  pice');

                            });

                            }, controller: jarPriceController,),
                        ),
                        TextTitle(title: 'jar claculation', value: "resultjarcal "),


                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    color: Colors.teal[400],
                    child:  Column(
                      children: [
                        const Text("wick calc"),
                        Expanded(
                          child: TextFieldTitle(
                            title: ' number of wick ',
                            onChange: (v) { setState(() {

                              print('wax wight');

                            });

                            }, controller: wicknumController,),
                        ),
                        Expanded(
                          child: TextFieldTitle(
                            title: 'wick price',
                            onChange: (v) { setState(() {

                              print('wax pice');

                            });

                            }, controller: wickPriceController,),
                        ),
                        TextTitle(title: 'wicl claculation', value: "resultwickcal "),


                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    decoration: BoxDecoration(
                        color: CustomColor.containerColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: CustomColor.secondary)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextTitle(title: 'wax wight', value: "resultwax+unitWax" ),
                        TextTitle(title: 'fragrace  wight', value:'resultfo+unitf'),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
