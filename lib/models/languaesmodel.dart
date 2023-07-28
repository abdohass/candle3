import 'package:flutter/material.dart';

class Language {

final int id;
final String name;

final String languageCode;

Language({required this.id, required this.name, required this.languageCode});


static List<Language> mylangs= [

    Language (id: 1, name: "English", languageCode: "US"),
    Language (id: 1, name: "Arabic" , languageCode: "EG"),

  ];
}