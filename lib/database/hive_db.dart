import 'dart:io';

import 'package:hive/hive.dart';

import '../models/result_model.dart';

/*
*  flutter packages pub run build_runner build
* */

class HiveDB {
  final String resultDB = "result";

 Future<Box> _openHive() async {
   return await Hive.openBox(resultDB);
  }

 static init() {
    var path = Directory.current.path;
    Hive
      ..init(path)
      ..registerAdapter(ResultModelAdapter());
  }
/*
* [HiveDB().createResult(ResultModel(wax:2135.253,frag:21.21534))]
* */
  createResult(ResultModel resultModel)async {
   Box box = await _openHive();
    box.put(0, resultModel);
  }
/*
* [ await HiveDB().readResult() ]
* */
  Future<ResultModel> readResult()async{
    Box box = await _openHive();
   return box.get(0);
  }


}
