**R16- INSERIR CUPOM DE DESCONTO NA COMPRA**

**Atores:**

Usuário Final: Utiliza dos cupons de desconto do aplicativo para ganhar desconto na compra de produtos.

**Descrição sucinta:**

Este caso de uso é responsável por adicionar cupons de desconto nas compras, bem como consultar cupons ativos e indisponíveis.

**Pré-Condição:**

O ator deve ter o software instalado no dispositivo e cadastro no aplicativo ifood, além de que, deverá ter adicionado produtos na sacola. 

**Fluxo principal:**

1. O ator acessa o aplicativo e adiciona produtos na sacola;
1. O sistema exibirá a opção “Ver sacola” na parte inferior do app;
1. Após o ator clicar em “Ver sacola”, o sistema mostrará os itens contidos na sacola e exibirá a opção “Cupom”;
1. Após o ator clicar em “Cupom”, será aberta uma nova tela exibindo uma lista de cupons ativos;
1. O ator seleciona um cupom ativo;
1. O sistema voltará para a tela da sacola, em que aparecerá a informação de que o cupom foi aplicado;
1. O sistema aplica o desconto e o ator será capaz de finalizar o pedido;

**Campo de formulário:**

|**Campo**|**Obrigatório?**|**Editável?**|**Formato**|
| :-: | :-: | :-: | :-: |
|Código do cupom|Não|Sim|Texto|

**Opções do usuário:**

|**Campo**|**Descrição**|**Atalho**|
| :-: | :-: | :-: |
|Adicionar|Adicionar cupom no pedido|-|
** 


**Relatório do Usuário:** 

|**Campo**|**Descrição**|**Formato**|
| :-: | :-: | :-: |
|**-**|**-**|**-**|
** 

**Fluxo Alternativos:**

**FA01- Adicionar por código de cupom:**

\1. No passo 4 do fluxo principal, o ator clica na caixa “Código de cupom”;

\2. O ator preenche a caixa de texto com o código do cupom;

\3. O ator clica em “Adicionar”;

\4. E o processo continua a partir do passo 6 do fluxo principal;

**FA02- Consultar cupons indisponíveis:**

\1. No passo 4 do fluxo principal, o ator seleciona “Indisponíveis”;

\2. O sistema mostrará uma lista de cupons que não estão mais disponíveis para uso;

**FA03- Sem cupom:**

\1. No passo 4 do fluxo principal, o ator seleciona a opção “Sem cupom”;

\2. O sistema voltará para a tela da sacola, sem nenhum cupom selecionado;

**FA04- Cupom inválido:** 

\1. No passo 4 do fluxo principal, o ator clica na caixa “Código de cupom”;

\2. O ator preenche a caixa de texto com o código do cupom inválido;

\3. O ator clica em “Adicionar”;

\4. O sistema exibirá a mensagem “Cupom inválido”;

**FA05- Adicione um item participante pra usar:**

\1. No passo 5 do fluxo principal, o ator seleciona um cupom que não é válido para os produtos adicionados na sacola;

\2. O sistema exibirá a mensagem “Adicione um item participante pra usar”;

\3. O ator deve clicar em “Ok, entendi” e selecionar um cupom valido para os produtos na sacola.

**User story**


Eu como usuário gostaria de adicionar descontos nas minhas compras no aplicativo por meio de cupons. Eu adiciono itens a sacola, localizo a opção de cupom, aperto em adicionar e o aplicativo exibirá uma lista de cupons ativos, eu seleciono um, e o aplicativo modifica o valor total da minha compra em relação ao desconto aplicado.

**Diagrama**

https://imgur.com/a/CtnwIBd




**Prototipação**

https://imgur.com/y7sqGmy       https://imgur.com/0rPJqUM

    Tela da Sacola                 Tela de cupons ativos


https://imgur.com/2WpnWpP       https://imgur.com/U8gwBdu

    Cupom aplicado               Inserir código de cupom


https://imgur.com/AXQFrhj       https://imgur.com/Rlobsaf
                                   
     Cupom inválido                 Mensagem de FA05

