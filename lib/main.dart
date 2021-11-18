import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/pages/login_page.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ifood | ES - 2021.2',
      theme: ThemeData(
        primarySwatch: AppCores.vermelhoPrincipal,
      ),
      home: const LoginPage(),
    );
  }
}
