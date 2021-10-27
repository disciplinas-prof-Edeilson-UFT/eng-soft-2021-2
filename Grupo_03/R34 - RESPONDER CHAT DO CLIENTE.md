**CASO DE USO**

**R34 - RESPONDER CHAT DO CLIENTE**

- **Atores**

Lojista: Realizar suporte e ajuda ao cliente via chat.

- **Descrição sucinta**

Realiza troca de mensagens entre o estabelecimento e o cliente final.

- **Pré condição**

O lojista deverá ter cadastro de lojista no ifood e o software do aplicativo instalado no dispositivo ou computador, e neste caso, o cliente final deve enviar uma mensagem ao mesmo.

- **Fluxo principal**

FP001 - O lojista acessa o aplicativo e logo após navega até a aba de “Chat”, 		localizada no canto inferior direito.

FP002 - O sistema apresentará 2 abas, uma com chats não respondidos e outra com chats finalizados;



FP003 - O lojista acessa a aba de chat “Abertos”, e seleciona algum chat;

**FA001 (Chat Aberto);**

FP003 - O lojista acessa a aba de chat “Finalizados”, e seleciona algum chat;

**FA002 (Chat Finalizado);**

**- Fluxos Alternativos:**

**FA001 (Chat Aberto):** 

1. O sistema apresenta todo o histórico de mensagens ainda não respondidas ou não finalizadas; **FA003 (Finalizar Chat);**

**FA002 (Chat Finalizado):** 

1. O sistema apresenta todo o histórico de mensagens trocadas com o usuário, já finalizadas;

**FA003 (Finalizar Chat):** 

1. Botão localizado no canto inferior direito, que permite ao lojista finalizar um chat Aberto;




- **Campos do formulário**


|**Campo**|**Obrigatório?**|**Editável?**|**Formato**|
| :- | :-: | :-: | :-: |
|Mensagem|Não|Sim|Char|

- **Opções do usuário**


|**Campo**|**Descrição**|**Atalho**|
| :-: | :- | :-: |
|-|-|-|

- **Relatório do usuário**


|**Campo**|**Descrição**|**Atalho**|
| :-: | :-: | :-: |
|-|-|-|


**User Storie: Responder Chat do Cliente**

1. Em todos os sistemas, os clientes (Ex: Lojistas) devem ter um meio de comunicação direta com o usuário, e hoje em dia a forma mais fácil, rápida e segura, é por meio do chat. A funcionalidade descrita apresenta todos os pilares de um método de comunicação completa, sendo diretamente ligada ao usuário por meios humanos;

**Prototipação**

<img src="https://imgur.com/a/pcQ8aHL" width="200" alt="Onde encontrar"/>

<img src="https://imgur.com/4kBWQhq" width="200" alt="2 Abas"/>

<img src="https://imgur.com/a/tvWyj6X" width="200" alt="Finalizar Chat"/>


**Diagrama**

<img src="https://imgur.com/a/ci3ABCX" width="200" alt="Diagrama"/>
