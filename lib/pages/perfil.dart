import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/perfil/cards_perfil_componente.dart';


class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: const [
          Expanded(child: OpcoesPerfil(opcoespefils: [
              Opcoes("Chats", "Minhas conversas", Icon(Icons.chat_outlined)),
                Opcoes("Notificações", "Minha central", Icon(Icons.notifications_outlined)),
                Opcoes("Carteira", "Meu saldo e QR code", Icon(Icons.account_balance_wallet_outlined)),
                Opcoes("Clube iFood", "Meus pacotes de desconto", Icon(Icons.confirmation_number_outlined)),
                Opcoes("Cupons", "Meus cupons de desconto", Icon(Icons.local_activity_outlined)),
                Opcoes("Fidelidade", "Minhas fidelidades", Icon(Icons.star_rate_outlined)),
                Opcoes("Favoritos", "Meus locais favoritos", Icon(Icons.favorite_outlined)),
                Opcoes("Favoritos", "Meus locais favoritos", Icon(Icons.favorite_outlined)),
                Opcoes("Favoritos", "Meus locais favoritos", Icon(Icons.favorite_outlined)),
          ]))
        ],
      ),
    );
  }
}
