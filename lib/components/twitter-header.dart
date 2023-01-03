import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class HeaderButton extends StatelessWidget {
  String label;
  TextAlign align;

  HeaderButton({required this.label, this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(25),
      child: Text(
        label,
        textAlign: align,
        style: const TextStyle(color: Color(0xFFFFFFFF)),
      ),
    ));
  }
}

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          HeaderButton(label: "Nouveau", align: TextAlign.left),
          HeaderButton(label: "Accueil"),
          HeaderButton(label: "Rechercher", align: TextAlign.right)
        ],
      ),
    );
  }
}
