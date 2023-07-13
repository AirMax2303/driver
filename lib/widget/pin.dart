import 'package:driver/widget/widgets.dart';
import 'package:flutter/material.dart';

class PinBox extends StatelessWidget {
  const PinBox({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 76,
      decoration: BoxDecoration(
        color: data == '' ? AppColor.backgroundColor : AppColor.greenColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(4, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(padding: const EdgeInsets.fromLTRB(25, 20, 25, 20), child: AppText.blackText29(data)),
    );
  }
}

class PinKeyboard extends StatelessWidget {
  PinKeyboard({Key? key, required this.click, required this.onDelPressed}) : super(key: key);
  Click click;
  VoidCallback onDelPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinElement(
              number: 1,
              click: click,
            ),
            PinElement(
              number: 2,
              click: click,
            ),
            PinElement(
              number: 3,
              click: click,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinElement(
              number: 4,
              click: click,
            ),
            PinElement(
              number: 5,
              click: click,
            ),
            PinElement(
              number: 6,
              click: click,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinElement(
              number: 7,
              click: click,
            ),
            PinElement(
              number: 8,
              click: click,
            ),
            PinElement(
              number: 9,
              click: click,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 50,
            ),
            PinElement(
              number: 0,
              click: click,
            ),
            IconButton(
                onPressed: () {
                  onDelPressed();
                },
                icon: Image.asset('assets/li_delete.png'))
          ],
        ),
      ],
    );
  }
}

typedef Click = void Function(int number);

class PinElement extends StatelessWidget {
  PinElement({Key? key, required this.number, required this.click}) : super(key: key);
  final int number;
  Click click;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          click(number);
        },
        child: AppText.blackText29(number.toString()));
  }
}
