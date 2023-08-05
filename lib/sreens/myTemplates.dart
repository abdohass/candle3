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
  //List<Template> savedTemplates = [];

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


  //  void saveTemplate(double resultwax, double resultfo) {
  //   final box = Hive.box('myBox');
  //   final template = Template(resultwax: resultwax, resultfo: resultfo);
  //   templates.add(template);
  //   box.put('templates', templates.map((t) => t.toJson()).toList());
  //
  //
  //
  //   setState(() {
  //     currentResultwax =  resultwax.toString();
  //     currentResultfo = resultfo.toString();
  //   });
  //   savedTemplates.add(template);
  //
  //
  // }




  @override
  Widget build(BuildContext context) {
   // savedTemplates = getTemplates();


    return Scaffold(
      appBar: AppBar(title: Text("My Templates")),
      body: ListView.builder(
        itemCount: templates.length,
        itemBuilder: (context, index) {
          final template = templates[index];
          return ListTile(
            title: Text('Result Wax: ${template.resultwax}'),
            subtitle: Text('Result FO: ${template.resultfo}'),
          );
        },
      ),
    );
  }




}