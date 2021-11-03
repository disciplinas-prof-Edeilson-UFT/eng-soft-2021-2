**R17 - Buscar Alimento**

**-Atores:**

Usuário Final - Utiliza do mecanismo de busca para comprar seus produtos.

**-Descrição Sucinta:**

Buscar os produtos desejados, e visualizá-los juntos dos lojistas os quais os vendem.

**-Pré-Condição:**

Os atores devem estar com o Software instalado no seu dispositivo.

**-Fluxo Principal:**

1. O Ator acessa a tela inicial do sistema e, assim, seleciona a opção buscar no menu em baixo
2. O sistema apresenta a tela de busca, a qual solicita o nome do produto desejado
3. Após inserido o nome, deve ser confirmado a busca
4. Após confirmado o sistema exibe uma lista de opções por itens e lojas relacionado à busca

**-Campo de Formulário:**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Busca | Não | Sim | Texto |

**-Opções dos Usuários:**

| **Campo** | **Descrição** | **Atalho** |
| --- | --- | --- |
| Confirmar Busca | Confirma a busca | - |
| Cancelar Busca | Cancelar a busca | - |

**-Relatório do Usuário:**

| **Campo** | **Descrição** | **Formato** |
| --- | --- | --- |
| - | - | - |

**- Fluxos Alternativos:**

**FA01 - Buscar itens por loja**

1. No passo 4 do fluxo principal, o Ator seleciona menu lojas
2. Sistema exibe uma lista de lojas relacionado a busca
3. Após o autor selecionar uma loja, o sistema exibe os detalhes da loja e seus produtos.

**FA02 - Buscar itens por itens**

1. No passo 4 do fluxo principal, o Ator seleciona menu items
2. Sistema exibe uma lista de itens relacionado a busca
3. Após o Ator selecionar produto desejado, o sistema irá mostrar detalhes deste item

**FA03 - Produto não encontrado**

1. No passo 3 do fluxo principal, se item não existe o sistema exibe mensagem de &quot;Nenhum resultado encontrado&quot;, permitindo reescrever um novo produto

**FA04 - Alterar Busca**

1. Após o passo 4 do fluxo principal, caso o Ator queira mudar sua busca, basta selecionar a caixinha de busca e renomear o produto desejado
2. Após renomeado, caso o produto exista deve ser confirmado a busca. Caso não exista, vai para o FA03.
3. Após confirmado o sistema volta para o passo 4 do fluxo principal.

**User Storie: Buscar Alimentos**

1. Eu como usuário gostaria de fazer uma busca fácil. Eu dou o nome do produto, e o aplicativo faz uma busca baseada no nome, organizando por item, ou por loja, com a intenção de comprá-los.

**Prototipação**

<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/01.png" width="200" alt="Tela Inicial"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/02.png" width="200" alt="Tela de busca"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/03.png" width="200" alt="Tela busca de um item"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/04.png" width="200" alt="Tela Listagem por loja"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/05.png" width="200" alt="Tela Listagem por items"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/06.png" width="200" alt="Tela mensagem item não encontrado"/>


**Diagrama**

<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/images/07.png" width="200" alt="Diagrama caso de uso"/>