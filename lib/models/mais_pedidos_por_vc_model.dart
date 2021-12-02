class MaisPedidos {
  final String nome;
  final String estado;
  final String fotourl;

  const MaisPedidos(this.nome, this.estado, this.fotourl);
}

class MaisPedidosModel {
  final List<MaisPedidos> maispedidoslist;

  const MaisPedidosModel(
      {this.maispedidoslist = const [MaisPedidos('', '', '')]});
}
