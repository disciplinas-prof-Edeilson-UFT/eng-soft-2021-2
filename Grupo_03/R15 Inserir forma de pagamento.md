**R15 – Inserir Forma de Pagamento**

**- Atores:**
**
`	`Usuário Final – Insere as formas de pagamento desejáveis a serem utilizadas na confirmação de um pedido;

**- Descrição sucinta:**

`	`Realizar o cadastro das formas de pagamento no aplicativo escolhendo entre as opções disponíveis: cartão, vales e pagamento corporativo;

**- Pré-condição:**
**
`	`Os atores devem ter o aplicativo pré-instalado em seu dispositivo e precisam estar logados no mesmo com login e senha;

**- Fluxo Principal:**
**
`	`1 – O ator ao acessa a tela inicial do sistema e seleciona o ícone “Perfil”;

2 – O sistema apresenta as opções do perfil, o ator deve selecionar a opção “Formas de pagamento”;

3 – O sistema apresenta em seguida a tela FORMAS DE PAGAMENTO onde o ator deve selecionar a opção “Adicionar novo cartão” para inserir a nova forma de pagamento;

4 – O sistema exibe na tela as opções de pagamento sendo elas:

`	`Crédito; Vale-alimentação; Débito; Outros vales; Vale-refeição; Pagamento corporativo

5 – Ao selecionar o tipo de cartão ou vale desejado, o sistema exibe o formulário de cadastro de pagamento:

**Formulário para Cartões (débito/crédito/Vales)**
**
`		`Número do cartão:			Nome do titular:

`		`Validade:				CPF/CNPJ do titular:

`		`CVV:					Apelido do cartão:



`		`**Formulário para Pagamento corporativo**
**
`		`E-mail do trabalho:

6 – O ator após inserir todos os dados corretamente seleciona a opção “Salvar”;

7 – O sistema guarda a forma de pagamento na conta do usuário e ao realizar um pedido a mesma será exibida para escolha de pagamento;




**- Campos do formulário:**

|**Campo**|**Obrigatório?**|**Editável?**|**Formato**|
| :-: | :-: | :-: | :-: |
|Número do cartão|Sim|Não|Numérico |
|Validade|Sim|Não|Date|
|CVV|Sim|Não|Numérico|
|Nome do titular|Sim|Não|Texto|
|CPF/CNPJ do titular|Sim|Não|Numérico|
|Apelido do cartão|Não|Não|Texto|

**- Campos do usuário:**

|**Opção**|**Descrição**|**Atalho**|
| :-: | :-: | :-: |
|Salvar|Confirma o cadastro da forma de pagamento|-|
|Voltar|Sair da tela de cadastro da forma de pagamento|-|

**- Relatório do usuário:**

|**Campo**|**Descrição**|**Formato**|
| :-: | :-: | :-: |
|-|-|-|

**- Fluxos alternativos:**

**FA01 – Tipo de vale**

1. No passo 5 do fluxo principal o autor escolhe como opção um tipo de vale
1. O sistema exibe quais os tipos/bandeiras de vales estão disponíveis
1. Ao selecionar uma opção o ator é direcionado ao formulário de cadastro 

**FA02 – Informação incorreta**

1. No passo 5 do fluxo principal no ato de preencher o formulário, se o ator inserir menos de 16 dígitos o sistema exibe a mensagem “Insira um número válido de 0-16 digitos”;
1. Se o ator inserir uma validade com data inválida o sistema exibe a mensagem “Insira uma data válida”;
1. Se o ator não inserir sobrenome no campo Nome do titular o sistema exibe a mensagem “Insira nome e sobrenome”;
1. Se o ator inserir um CPF/CNPJ invalido o sistema exibe a mensagem “Insira um número de CPF/CNPJ válido”;
1. Se ao final do preenchimento do formulário algum campo obrigatório estiver incorreto o botão de salvar não será liberado e informara a devida mensagem no campo errado;



**User Story: Formas de Pagamento**

Como usuário eu quero cadastrar as formas de pagamento que utilizarei ao realizar meus pedidos. Para isso eu preciso estar logado no aplicativo, entrar na aba perfil, clicar em “Formas de pagamento”, escolher o tipo de pagamento, sendo ele cartão, vale ou pagamento corporativo, preencher o formulário do cartão/vale com as informações corretas e clicar em “Salvar”.


**Especificações de Requisitos**

**Diagrama de caso de uso**

    https://imgur.com/cys58YR


**Prototipação de telas**

        https://imgur.com/vlcaerF                                   https://imgur.com/KLAP1BW

	        Tela Inicial							                    Tela de Perfil



        https://imgur.com/WrzNnuT                                   https://imgur.com/BCQyGC6

       Tela de adicionar pagamento				                   Escolher o tipo de pagamento





        https://imgur.com/ZxBdaV1

    Formulário para Cartão crédito ou débito





        https://imgur.com/iNwvIII                                   https://imgur.com/PPfSJKF           

        Tela para escolha de Vale					                Formulário para cartão Vale






        https://imgur.com/iqS3m4f                                   https://imgur.com/seHwszo

    Formulário para pagamento corporativo	                   Confirmação para o e-mail do trabalho
