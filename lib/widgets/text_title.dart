import 'package:flutter/material.dart';

import '../constcolor/textStyle.dart';

class TextTitle extends StatelessWidget {
  TextTitle({required this.title, required this.value, Key? key})
      : super(key: key);
  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Text(
          title,
          style: CustomTextStyle(18,Colors.blueGrey).titleWhiteTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(value,style: CustomTextStyle.bodyWhiteTextStyle,)
      ],
    );
  }
}
