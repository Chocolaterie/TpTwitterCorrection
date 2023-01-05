import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class TwitterButton extends StatelessWidget {
  String iconPath;

  TwitterButton({required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
      icon: Image.asset(iconPath),
      onPressed: () {},
    ));
  }
}

class TwitterItemFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        TwitterButton(iconPath: "images/reply.png"),
        TwitterButton(iconPath: "images/retweet.png"),
        TwitterButton(iconPath: "images/favorite.png"),
      ],
    );
  }
}

class TwitterItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        // Bloc à gauche : Image
        Image.asset(
          "images/test.jpg",
          width: 125,
        ),
        // Bloc à droite : Contient deux elements verticalements
        // donc = Flex vertical
        Expanded(
          child: Flex(
            direction: Axis.vertical,
            children: [
              // Ligne 1 de la carte du tweet
              // Auteur avec le temps
              Padding(
                padding: const EdgeInsets.all(10),
                child: Flex(
                  direction: Axis.horizontal,
                  children: const [
                    Expanded(child: Text("jean-luc@gmail.com")),
                    Text(
                      "50s",
                      style: TextStyle(color: Color(0xffAAAAAA)),
                    )
                  ],
                ),
              ),
              // Le message
              const Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child:
                    SizedBox(width: double.infinity, child: Text(loremLipsum)),
              ))
            ],
          ),
        )
      ],
    );
  }
}
