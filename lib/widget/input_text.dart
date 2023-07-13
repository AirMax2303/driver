import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

class TextFormFieldBox extends StatelessWidget {
  TextFormFieldBox(this.data, {Key? key, required this.hintText, required this.onChanged}) : super(key: key);
  final String data;
  final String hintText;
  ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4),
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      child: Column(
          children: [
            AppText.blackText12(data),
            TextFormField(
              decoration: InputDecoration(hintText: hintText),
              onChanged: (value) {onChanged!(value);},
            ),
          ]),
    );
  }
}
