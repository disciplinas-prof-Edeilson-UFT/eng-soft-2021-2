import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifood_engenharia_de_software/components/perfil/abas_inferiores_do_perfil_componente.dart';
import 'package:ifood_engenharia_de_software/components/perfil/cabecalho_perfil_componente.dart';
import 'package:ifood_engenharia_de_software/utilities/fire_auth.dart';

import 'login_page.dart';

import '../components/perfil/card_convide_amigos.dart';

class PaginaPerfil extends StatefulWidget {
  final User user;

  const PaginaPerfil({Key? key, required this.user}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil>
    with SingleTickerProviderStateMixin {
  bool _isSendingVerification = false;
  bool _isSigningOut = false;

  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopoPagina(user: _currentUser),
            const SizedBox(height: 16.0),
            Text(
              '${_currentUser.email}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 16.0),
            _currentUser.emailVerified
                ? Text(
                    'Email verificado',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.green),
                  )
                : Text(
                    'Email Não verificado',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.red),
                  ),
            const SizedBox(height: 16.0),
            _isSendingVerification
                ? const CircularProgressIndicator()
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            _isSendingVerification = true;
                          });
                          await _currentUser.sendEmailVerification();
                          setState(() {
                            _isSendingVerification = false;
                          });
                        },
                        child: const Text('Verifique o email'),
                      ),
                      const SizedBox(width: 8.0),
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        onPressed: () async {
                          User? user = await FireAuth.refreshUser(_currentUser);

                          if (user != null) {
                            setState(() {
                              _currentUser = user;
                            });
                          }
                        },
                      ),
                    ],
                  ),
            const SizedBox(height: 16.0),
            _isSigningOut
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isSigningOut = true;
                      });
                      await FirebaseAuth.instance.signOut();
                      setState(() {
                        _isSigningOut = false;
                      });
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text('Sair'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
            Expanded(child: CardConvidar(user: _currentUser)),
            const Expanded(
                child: AbaInfCard(
              listaabas: [
                Aba("Ajuda", Icon(Icons.help_outline, color: Colors.black38)),
                Aba("Configurações",
                    Icon(Icons.settings, color: Colors.black38)),
                Aba("Segurança", Icon(Icons.security, color: Colors.black38)),
                Aba("Usar no carro",
                    Icon(Icons.qr_code, color: Colors.black38)),
                Aba("Sugerir restaurantes",
                    Icon(Icons.add_business_outlined, color: Colors.black38)),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
