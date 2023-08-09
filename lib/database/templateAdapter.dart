//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:untitled/database/template.dart';
//
// class TemplateAdapter extends TypeAdapter<Template> {
//   @override
//   int get typeId => 0; // Unique identifier for the Template class
//
//   @override
//   Template read(BinaryReader reader) {
//     return Template(
//       resultwax: reader.readDouble(),
//       resultfo: reader.readDouble(),
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, Template obj) {
//     writer.writeDouble(obj.resultwax);
//     writer.writeDouble(obj.resultfo);
//   }
//
//
// }