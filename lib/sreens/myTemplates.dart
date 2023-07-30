import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:untitled/database/hive_db.dart';
import 'package:untitled/models/result_model.dart';



class MyTemplets extends StatefulWidget {
  const MyTemplets({super.key});

  @override
  State<MyTemplets> createState() => _MyTempletsState();
}

class _MyTempletsState extends State<MyTemplets> {
  // Function(ResultModel ) mybox = HiveDB().createResult(ResultModel(wax:1, fragrace: 1));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    ) ;
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  //}


//}
