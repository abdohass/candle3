import 'package:flutter/material.dart';
import 'package:untitled/database/hive_db.dart';
import 'package:untitled/models/result_model.dart';



class MyTemplets extends StatefulWidget {
  const MyTemplets({super.key});

  @override
  State<MyTemplets> createState() => _MyTempletsState();
}

class _MyTempletsState extends State<MyTemplets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    ) ;
  }
}
