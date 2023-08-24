import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/pages/home_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 50),
      width: size.width,
      child: Center(
        child: Card(
          color: pinkColor,
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: loginController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Login",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Veuillez saisir votre login";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: passCOntroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Mot de passe",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Veuillez saisir votre mot de passe";
                      } else if (value.length < 8) {
                        return "Le mot de passe doit contenir au moins 8 caractères";
                      } else if (!value
                          .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        return "Le mot de passe doit contenir au moins un caractère spécial";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        child: const Text("Annuler"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print(loginController.text);
                            print(passCOntroller.text);
                            if (adminLog == loginController.text &&
                                adminPass == generateMd5(passCOntroller.text)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text("Connexion réussie"),
                                ),
                              );
                              print("connexion réussie");
                            }
                          } else {
                            if (kDebugMode) {
                              print("connexion échouée");
                            }
                          }
                        },
                        child: const Text("Valider"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
