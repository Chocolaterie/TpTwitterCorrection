import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/components/login_form.dart';
import 'package:tp_twitter_correction/components/twitter_footer.dart';
import 'package:tp_twitter_correction/components/twitter_header.dart';
import 'package:tp_twitter_correction/components/twitter_item.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage({super.key});

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
