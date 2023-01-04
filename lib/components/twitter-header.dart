import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class HeaderButton extends StatelessWidget {
  String label;
  String iconPath;
  TextAlign align;

  HeaderButton(
      {this.label = "", this.align = TextAlign.center, this.iconPath = ""});

  Widget getButton() {
    if (iconPath.isEmpty) {
      // Le text
      return Text(
        label,
        textAlign: align,
        style: const TextStyle(color: Color(0xFFFFFFFF)),
      );
    }
    // Sinon : IconButton
    return IconButton(
      icon: Image.asset(iconPath),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(25),
      child: getButton(),
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
          // icon crayon
          HeaderButton(
            iconPath: "images/pencil.png",
          ),
          // text Accueil
          HeaderButton(label: "Accueil"),
          // icon rechercher
          HeaderButton(
            iconPath: "images/search.png",
          )
        ],
      ),
    );
  }
}
