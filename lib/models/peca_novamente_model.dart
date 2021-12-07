class Produto {
  final String nome;
  final int quantidade;

  const Produto(this.nome, this.quantidade);
}

class PecaNovamenteModel {
  final String urlLogoRestaurante;
  final List<Produto> pedidos;

  const PecaNovamenteModel(
      {this.urlLogoRestaurante = '', this.pedidos = const [Produto('', 0)]});

}
