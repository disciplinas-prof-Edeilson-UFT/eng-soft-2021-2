**R11 - Validação de pagamento** 

- **Descrição sucinta:** 
Apos o cliente escolher seu pedido entra em pratica a forma de validação de pagamento, caso o cliente escolha a forma de pagamento 
sendo cartão, um request é enviado ao banco escolhido validando ou não o pagamento do cliente, caso falhe em request um alerta é enviado na interface do cliente comunicando o erro. Caso tudo ocorra bem o pagamento é debitado e o pedido liberado.

- **Fluxo Principal**
ao cadastrar uma forma de pagamento ela é validada no momento de seu cadastro, caso a forma de pagamento seja cartão com um nome diferente da conta conectada uma verificação deve ser realizada atraves de ligação ou codigo privado, evitando assim golpes e prejuizos.

- **Atores:** Clientes

- **Pré-requisito:** O usuário deve ter o aplicativo instalado em seu aparelho e aceitar as normas de seguranças do app. 

- **Segurança no Fluxo do Pedido**
 
- **CARTÃO** 

Autenticar usuario atraves do acesso 
Validar a forma de Pagamento baseado no historico do usuario 
Verificar as credencias do cartão e usuario  
Verificar ultimas compras feitas com cartão (Se for a primeira compra com o cartão verificar com a instituição a liberação do pedido) 
- **Dinheiro** 
Recebe o pedido – Verifica as ultimas compras do usuario (se são validas) 

**Segurança para os logistas** 

Caso o usuario diariamente efetue pedidos com contas bancarias diferentes uma outra validação é realizada, para evitar fraudes bancarias

Para garantir que não havera vasamento de dados bancarios por parte do app, o app não guarda seus dados, seus **dados** completos de **cartão** não ficam armazenados nas bases do app, mas sim em seu telefone celular ou dispositivo utilizado na compra. 
 

**use storie** 
quero salvar meus dados de pagamento no app para que toda vez que for comprar isso não seja validado sempre

Prototipação :
https://drive.google.com/file/d/13IMgEvuJTI_KZlpe1u8-Sl7lO7e6xCG5/view?usp=sharing
