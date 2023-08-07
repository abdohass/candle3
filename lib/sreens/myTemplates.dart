import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../sql/database_helper.dart';
import '../sreens/firstscreen.dart';


import '../database/template.dart';
import '../database/templateAdapter.dart';

class MyTemplets extends StatefulWidget {

  @override
  State<MyTemplets> createState() => _MyTempletsState();
}

class _MyTempletsState extends State<MyTemplets> {

  List<Map<String, dynamic>> templates = [];

  @override
  void initState() {
    super.initState();
    fetchTemplates();
  }
  Future<void> fetchTemplates() async {
    final fetchedTemplates = await DatabaseHelper.instance.getAllTemplates();
    setState(() {
      templates = fetchedTemplates;
    });
  }



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("My Templates")),
      body: ListView.builder(
        itemCount: templates.length,
        itemBuilder: (context, index) {
          final template = templates[index];
          return ListTile(
            title: Text('Result Wax: ${template['resultwax']}'),
            subtitle: Text('Result FO: ${template['resultfo']}'),
          );
        },
      ),
    );
  }

}