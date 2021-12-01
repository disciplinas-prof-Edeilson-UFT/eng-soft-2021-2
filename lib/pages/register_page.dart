// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:ifood_engenharia_de_software/actions/navegacao_rodape_action.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';

import 'package:ifood_engenharia_de_software/pages/login_page.dart';
import 'package:ifood_engenharia_de_software/pages/perfil.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'package:ifood_engenharia_de_software/utilities/fire_auth.dart';
import 'package:ifood_engenharia_de_software/utilities/validator.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusName.unfocus();
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: AppCores.branco,
          foregroundColor: AppCores.vermelhoPrincipal,
          title: const Text('Cadastro',
              style: TextStyle(color: AppCores.vermelhoPrincipal)),
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _registerFormKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _nameTextController,
                      focusNode: _focusName,
                      validator: (value) => Validator.validateName(
                        name: value,
                      ),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Name",
                        errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _emailTextController,
                      focusNode: _focusEmail,
                      validator: (value) => Validator.validateEmail(
                        email: value,
                      ),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Email",
                        errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: const BorderSide(
                            color: AppCores.vermelhoPrincipal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordTextController,
                      focusNode: _focusPassword,
                      obscureText: true,
                      validator: (value) => Validator.validatePassword(
                        password: value,
                      ),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Senha",
                        errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    _isProcessing
                        ? const CircularProgressIndicator()
                        : Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    setState(() {
                                      _isProcessing = true;
                                    });

                                    if (_registerFormKey.currentState!
                                        .validate()) {
                                      User? user = await FireAuth
                                          .registerUsingEmailPassword(
                                        name: _nameTextController.text,
                                        email: _emailTextController.text,
                                        password: _passwordTextController.text,
                                      );

                                      setState(() {
                                        _isProcessing = false;
                                      });

                                      if (user != null) {
                                        appStore.dispatcher(AlterarPagina(0));
                                      }
                                    }
                                  },
                                  child: const Text(
                                    'Cadastrar',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
