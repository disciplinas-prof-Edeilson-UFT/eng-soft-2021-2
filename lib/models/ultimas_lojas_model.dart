class Lojas {
  final String nome;
  final String logourl;

  const Lojas(this.nome, this.logourl);
}

class UltimasLojasModel {
  final List<Lojas> listadaslojas;

  const UltimasLojasModel(
   {this.listadaslojas= const [Lojas('', '')]});

}
