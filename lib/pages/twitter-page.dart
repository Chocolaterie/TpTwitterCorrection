import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/components/login-form.dart';
import 'package:tp_twitter_correction/components/twitter-footer.dart';
import 'package:tp_twitter_correction/components/twitter-header.dart';
import 'package:tp_twitter_correction/components/twitter-item.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class TwitterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Header
          HeaderBar(),
          // Content
          Expanded(
            child: Flex(direction: Axis.vertical, children: [
              // Formulaire de connexion
              LoginForm(),
              // Carte Twitter
              IntrinsicHeight(
                  // Deux elements verticals
                  child: Flex(direction: Axis.vertical, children: [
                // Le contenu du tweet (image, auteur, texte)
                IntrinsicHeight(child: TwitterItem()),
                // Les 3 boutons
                TwitterItemFooter()
              ]))
            ]),
          ),
        ],
      ),
      // Footer
      bottomSheet: FooterBar(),
    );
  }
}
