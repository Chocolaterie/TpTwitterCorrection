import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Flex(
        direction: Axis.vertical,
        children: [
          // Titre
          const Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Connexion à Twitter",
              style: TextStyle(color: highlightTextColor),
            ),
          ),
          // Champ Email
          const TextField(
            decoration: InputDecoration(
                labelText: "Identifiant", hintText: "pascale@gmail.com"),
          ),
          // Champ Mot de Passe
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: "Mot de passe"),
          ),

          // Champ switch
          Flex(
            direction: Axis.horizontal,
            children: const [
              Switch(value: false, onChanged: null),
              Text("Mémoriser mes informations",
                  style: TextStyle(color: highlightTextColor))
            ],
          ),
          // Bouton
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Connexion",
                    style: TextStyle(fontSize: 18),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
