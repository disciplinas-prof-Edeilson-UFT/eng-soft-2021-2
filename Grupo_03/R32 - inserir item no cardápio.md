**R32 – Inserir item no cardápio**

**- Atores:**

`	`Lojista – Insere novos itens ao seu cardápio que será exibido aos clientes;

**- Descrição sucinta:**

`	`Realizar o cadastro de novos itens no seu cardápio escolhendo a categoria desejada, nome do item, foto, preço e descrevendo o mesmo;

**- Pré-condição:**

`	`O ator deve ter o aplicativo pré-instalado em seu dispositivo móvel e precisam estar logados no mesmo com login e senha;

**- Fluxo Principal:**

`	`1 – O ator ao abrir a tela inicial do aplicativo seleciona o ícone “Perfil”;

`	`2 – O aplicativo apresentará as informações e o ator deve selecionar a aba cardápio;

3 – O aplicativo mostra o cardápio atual do lojista onde o ator deve rolar a tela até a categoria na qual o item será inserido e clicar em “Adicionar item”;

4 – Com a categoria selecionada o aplicativo abrirá o formulário de cadastro do item, o ator deve preencher os dados relacionados ao novo item:

`	`**Formulário do item**
**
`	`Categoria: (Pré-selecionada)	Nome do prato:

`	`Descrição:			imagem de capa:

`	`Preço:				Serve quantas pessoas:

5 – No ato de adicionar a imagem do produto o ator é direcionado para galeria para selecionar a foto desejada;

6 – Após todos os dados serem preenchidos corretamente o ator clica em “Salvar”;

7 – O aplicativo guarda o novo item e ele passa a fazer parte do cardápio onde fica disponível para os clientes realizarem a compra;

**- Campos de formulário:**

|**Campo**|**Obrigatório?**|**Editável?**|**Formato**|
| :-: | :-: | :-: | :-: |
|Categoria|Sim|Sim|Texto|
|Nome do item|Sim|Sim|Texto|
|Descrição|Não|Sim|Texto|
|Preço|Sim|Sim|Numérico|
|Qnt. de pessoas|Não|Sim|Numérico|
**- Campos dos usuários:**

|**Opção**|**Descrição**|**Atalho**|
| :-: | :-: | :-: |
|Salvar|Confirma o cadastro do novo item|-|
|Cancelar|Sair da tela de adicionar item|-|

**- Relatório do usuário:**

|**Campo**|**Descrição**|**Formato**|
| :-: | :-: | :-: |
|-|-|-|

**- Fluxos alternativos:**

**FA01 – Nova categoria**

1. No passo 3 do fluxo Principal o ator escolhe uma categoria do seu cardápio, porém, caso não tenha a categoria desejada o ator pode clicar em “Adicionar categoria” e inserir o nome desejado;
1. O aplicativo exibe a tela para que o ator insira o nome da nova categoria onde o novo item será inserido;
1. Ao clicar em “Salvar” o ator é direcionado para o formulário do novo item;

**FA02 – Campos incorretos**

1. No passo 4 do fluxo alternativo, caso o ator deixe algum campo obrigatório (nome, descrição e preço) vazio, o aplico retorna a seguinte mensagem “Preencha este campo”;

**User Story**

Como lojista eu quero adicionar um novo item ao meu cardápio para que fique disponível ao usuário, para isso eu preciso estar logado no aplicativo com a minha conta. Para adicionar o item eu preciso entrar na aba cardápio, escolher a categoria desejada e preencher o formulário com as informações referentes ao prato, sendo elas, nome, descrição, preço, foto e quantidade de pessoas que o prato servirá, após o preenchimento eu clico em salvar e o item passa a fazer parte do meu cardápio.


**Prototipação de telas**


![Tela Inicial](https://imgur.com/Z4nOSWp.jpeg) 

![Abas do lojista](https://imgur.com/eYNRTIq.jpeg)

![Cardápio da loja](https://imgur.com/7QWkJYw.png) 

![Adicionar uma nova categoria para o item](https://imgur.com/N9AMoUC.png)

![Tela para inserção do novo item](https://imgur.com/SvCBSU3.png)


**Diagrama de Caso de Uso**

![](https://imgur.com/R6XIRjN.jpeg)
