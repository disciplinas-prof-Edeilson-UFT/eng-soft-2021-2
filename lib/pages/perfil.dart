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
        children: [
          OpcoesPerfil(
            nomeArea: 'Chats',
            descricao: 'Minhas Conversas',
          ),
          OpcoesPerfil(
              nomeArea: 'Notificaçoes',
              descricao: 'Minha central de notificações'
          ),
          OpcoesPerfil(
              nomeArea: 'Carteira',
              descricao: 'Meu saldo e QR code'
          ),
          OpcoesPerfil(
              nomeArea: 'Clube iFood',
              descricao: 'Meus pacotes de desconto'
          ),
          OpcoesPerfil(
              nomeArea: 'Cupons',
              descricao: 'Meus cupons de desconto'
          ),
          OpcoesPerfil(
              nomeArea: 'Fidelidade',
              descricao: 'Minhas fidelidades'
          ),
          OpcoesPerfil(
              nomeArea: 'Favoritos',
              descricao: 'Meus locais favoritos'
          ),
          OpcoesPerfil(
              nomeArea: 'Formas de pagamento',
              descricao: 'Minhas formas de pagamento'
          ),
        ],
      ),
    );
  }
}
