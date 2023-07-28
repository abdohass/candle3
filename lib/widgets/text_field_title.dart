import 'package:flutter/material.dart';

import '../constcolor/textStyle.dart';


class TextFieldTitle extends StatefulWidget {
  TextFieldTitle({required this.title, required this.onChange,required this.controller ,Key? key})
      : super(key: key);
  String title;
  Function(String) onChange;
  TextEditingController controller ;

  @override
  State<TextFieldTitle> createState() => _TextFieldTitleState();
}

class _TextFieldTitleState extends State<TextFieldTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.title,
          style: CustomTextStyle.titleWhiteTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width:  300,
          child: TextField(
            maxLines: 1,
            onChanged: (_) {
              widget.onChange ;

            },
            controller: widget.controller,
            style: CustomTextStyle.bodyTextStyle,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                labelStyle: CustomTextStyle.bodyTextStyle),
          ),
        )
      ],
    );
  }
}