import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../sreens/firstscreen.dart';


import '../database/template.dart';
import '../database/templateAdapter.dart';

class MyTemplets extends StatefulWidget {
  final String resultwax;
  final String resultfo;

  MyTemplets({required this.resultwax, required this.resultfo, Key? key})
      : super(key: key);



  @override
  State<MyTemplets> createState() => _MyTempletsState();
}

class _MyTempletsState extends State<MyTemplets> {
  String currentResultwax = '';
  String currentResultfo = '';
  List<Template> templates = [];

  List<Template> getTemplates() {
    final box = Hive.box('myBox');
    final templatesJson = box.get('templates', defaultValue: []);
    return templatesJson
        .where((json) => json is Map<String, dynamic>)
        .map<Template>((json) => Template.fromJson(json))
        .toList();
  }
  @override
  void initState() {
    super.initState();
    currentResultwax = widget.resultwax;
    currentResultfo = widget.resultfo;
    templates = getTemplates();
  }


  void saveTemplate(double resultwax, double resultfo) {
    final box = Hive.box('myBox');
    final template = Template(resultwax: resultwax, resultfo: resultfo);
    templates.add(template);
    box.put('templates', templates.map((t) => t.toJson()).toList());



    setState(() {
      currentResultwax =  resultwax.toString();
      currentResultfo = resultfo.toString();
    });


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Result Wax: $currentResultwax'),
            Text('Result FO: $currentResultfo'),
            ElevatedButton(
              onPressed: () {
                saveTemplate(double.parse(widget.resultwax) ,double.parse(widget.resultfo) );
              },
              child: Text('Save Template'),
            ),
          ],
        ),
      ),
    );
  }




}