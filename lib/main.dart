import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/pages/login_page.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
