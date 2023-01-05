import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/components/login-form.dart';
import 'package:tp_twitter_correction/components/twitter-footer.dart';
import 'package:tp_twitter_correction/components/twitter-header.dart';
import 'package:tp_twitter_correction/components/twitter-item.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Content
          Expanded(
            child: Flex(direction: Axis.vertical, children: [
              // Formulaire de connexion
              LoginForm(),
            ]),
          ),
        ],
      ),
    );
  }
}
