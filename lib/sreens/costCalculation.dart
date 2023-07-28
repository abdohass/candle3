import 'package:flutter/material.dart';
import 'package:untitled/constcolor/color.dart';
import '../sreens/firstscreen.dart';
import '../widgets/text_field_title.dart';


class CostCalculation extends StatefulWidget {
  const CostCalculation({super.key});

  @override
  State<CostCalculation> createState() => _CostCalculationState();
}

class _CostCalculationState extends State<CostCalculation> {
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
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                physics:NeverScrollableScrollPhysics(),




                children: <Widget>[
                  Container(
                    height: 5,
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[100],
                    child:  Column(
                      children: [
                        const Text("wax calc"),
                        // TextFieldTitle(
                        //   title: 'total candle',
                        //   onChange: (v) { setState(() {
                        //
                        //     print('total wight');
                        //
                        //   });
                        //
                        //   }, controller: totalCandlesController,),

                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: const Text('oil calc'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('jar calc'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('wicke'),
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
