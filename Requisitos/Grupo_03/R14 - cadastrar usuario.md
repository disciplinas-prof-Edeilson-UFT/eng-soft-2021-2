**R14 – Cadastro de usuário**

**- Atores:**

`	`Usuário final – inserir os dados pessoais para realizar o próprio cadastro. 

**- Descrição sucinta:** 

`	`O ator deve inserir seus dados pessoais e passar por um processo de validação para realizar seu cadastro e ter acesso aos recursos do aplicativo 

\- **Pré-condição:**

`	`O ator precisa ter o aplicativo instalado em seu dispositivo.

\- **Fluxo principal:**

`	`1 - O ator abre o aplicativo na tela inicial e seleciona a opção do usuário “Continuar com o Google”;

`	`2 - O aplicativo exibe na tela as contas Google do ator e ele seleciona uma delas pra continuar o processo;

`	`3 - O ator preenche o formulário “Qual o número do seu celular?” com o seu número de telefone celular;

`	`4 - O ator seleciona a opção do usuário “Receber por Whatsapp” em “Como deseja receber seu código?”;

`	`5 - O ator preenche os campos com o código enviado no “Whatsapp” correspondente ao número de telefone cadastrado anteriormente;

`	`6 - Na próxima tela, ator seleciona “Usar localização atual” para definir o endereço para entregas. 

\- **Campos de formulário:**

|**Campo**|**Obrigatório**|**Editável?**|**Formato**|
| :-: | :-: | :-: | :-: |
|“qual o número do seu celular”|sim|Sim |numérico|

\- **Opções do Usuários:**

|**Campo** |**Descrição** |**Atalho**|
| :-: | :-: | :-: |
|Continuar com o Google|Seleciona a conta do google pra cadastro|-|
|Receber por Whatsapp|Recebe o código de confirmação dos dados no Whatsapp|<p></p><p>-</p>|
|Usar localização atual |Cadastra a localização do usuário como endereço pra entregas|-|

**- Fluxos alternativos**

**FA01 – “Outras opções” de cadastro**
**
`	`1 - Durante o passo 1 do “Fluxo principal” o ator pode alternativamente se cadastrar com a opção de usuário “outros” e escolher entre “e-mail”, “telefone” e “Facebook” para se cadastrar.

**FA02 – Continuar como “convidado” no cadastro**

`	`1 - Durante o passo 1 do “Fluxo principal” o ator pode alternativamente escolher a opção de usuário “continuar como convidado” para entrar ter acesso ao aplicativo sem passar pelo processo de cadastramento.

**FA03 – Receber o código por SMS**
**
`	`1 - Durante o passo 4 do “Fluxo principal” o ator pode alternativamente escolher a opção de usuário “Receber por SMS”, para receber o código de validação do número de telefone.

**FA04 – Escolher endereço personalizado** 

`	`1 - Durante o passo 6 do “Fluxo principal” o ator pode alternativamente preencher o campo “Endereço e número” para buscar um endereço.

`	`2 - O aplicativo fornece uma lista com todos os endereços correspondentes à busca do ator e então seleciona uma das opções da lista.

**FA05 – Escolher endereço personalizado (não encontrado)**

`	`1 - Durante o passo 6 do “Fluxo principal” o ator pode alternativamente preencher o campo “Endereço e número” para buscar um endereço.

`	`2 - O ator preenche o campo e faz uma busca pelo endereço, porém não corresponde ao desejado. Ele escolhe a opção do usuário “Buscar no mapa”

`	`3 - O ator define manualmente o endereço desejado através do mapa.

**User Storie: Cadastro de um usuário** 

`	 `1- Como usuário utilizando o aplicativo do “iFood” pela primeira vez, eu quero realizar meu cadastro através da minha conta “Google”, meu número de telefone (“Whatsapp”) e localização atual.







`				`**Prototipação**



https://i.imgur.com/FEIecLf.jpg                             https://i.imgur.com/QmozF0J.jpg

`	   `Tela inicial						    Conta do Google

https://i.imgur.com/vzVngWX.jpg                              https://i.imgur.com/sSCQnAQ.jpg 

`    `Inserir número de telefone                           Selecionar “Receber por Whatsapp”

https://i.imgur.com/AxM8ak3.jpg                                                        https://i.imgur.com/4d9tJlV.jpg

Inserir código recebido no Whatapp               Selecionar “Usar localização atual”


`				 `**Diagrama de caso de uso**

https://i.imgur.com/CeBeKTQ.png















