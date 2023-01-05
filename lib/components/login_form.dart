import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp_twitter_correction/utils/constantes.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<StatefulWidget> createState() => _LoginFormSate();
}

class _LoginFormSate extends State<StatefulWidget> {
  // référencer le formulaire
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  String? validateEmail(String value) {
    if (!EmailValidator.validate(value)) {
      return "Veuillez saisir un email valide";
    }
    return null;
  }

  void showDialogError() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Error"),
            content: Text("Couple Email/Mot de passe invalide"),
          );
        });
  }

  void submitForm(BuildContext context) {
    // Essayer de valider le formulaire : (Contrôle de surface)
    if (_formKey.currentState!.validate()) {
      // Sauvegarder l'etat du formulaire
      _formKey.currentState!.save();

      // If couple email/mote de passe valide : (Appel métier/API)
      if (_email == "mail@gmail.com" && _password == "password") {
        // Naviguer sur la page tweet
        Navigator.pushNamed(context, "/tweet-list-page");
      } else {
        // Afficher le message d'erreur
        showDialogError();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
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
            TextFormField(
              // Stocker la valeur dans l'attribut
              onSaved: (newValue) => _email = newValue!,
              // Déclare la stratégie de validation pour un email
              validator: (value) => validateEmail(value!),
              //--
              decoration: const InputDecoration(
                  labelText: "Identifiant", hintText: "pascale@gmail.com"),
            ),
            // Champ Mot de Passe
            TextFormField(
              // Stocker la valeur dans l'attribut
              onSaved: (newValue) => _password = newValue!,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Mot de passe"),
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
                  onPressed: () {
                    submitForm(context);
                  },
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
      ),
    );
  }
}
