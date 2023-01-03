import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class FooterButton extends StatelessWidget {
  String label;
  TextAlign align;

  FooterButton({required this.label, this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(25),
      child: Text(
        label,
        textAlign: align,
        style: TextStyle(color: Color(0xFFAAAAAA)),
      ),
    ));
  }
}

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          FooterButton(label: "Fil"),
          FooterButton(label: "Notification"),
          FooterButton(label: "Messages"),
          FooterButton(label: "Moi")
        ],
      ),
    );
  }
}
