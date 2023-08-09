import 'dart:io';
import 'package:hive/hive.dart';
import '../sreens/firstscreen.dart';

class Template {
  double resultwax;
  double resultfo;


  Template( {required this.resultwax, required this.resultfo});


  Map<String, dynamic> toJson() => {
    'resultwax': resultwax,
    'resultfo': resultfo,
  };

  factory Template.fromJson(Map<String, dynamic> json) {
    return Template(
      resultwax: json['resultwax'],
      resultfo: json['resultfo'],
    );
  }
}
