import 'package:flutter/material.dart';

import '../constcolor/textStyle.dart';


class myTextfeild extends StatefulWidget {
  myTextfeild({required this.title, required this.controller , required this.changing, Key? key})
      : super(key: key);
Function changing ;
 String title ;
  TextEditingController controller ;
  @override
  State<myTextfeild> createState() => _myTextfeildState();
}

class _myTextfeildState extends State<myTextfeild> {
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
            controller: widget.controller,
            maxLines: 1,
            onChanged: (_) {
              widget.changing() ;
            },
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
