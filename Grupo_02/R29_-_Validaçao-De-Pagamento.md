**R29 - Validação de pagamento** 

- **Descrição sucinta:** 
O repasse ao logista é feito apos a validação de pagamento do usuario, o repasse é feito de acordo com o 'contrato' com o restaurante retirando as devidas taxas. 

- **Fluxo Principal**
Ao cliente realizar uma compra em seu estabalecimento, essa compra é validada pelo fluxo de pagamento do cliente, logo apos ser confirmada o saldo entra em 'caixa' da empresa parceira ja com sua devida taxa retirada, porem ainda não livre para retirada da plataforma pois é preciso validar a entrega do pedido para que o valor seja liberado para o fluxo financeiro da empresa parceira

- **Atores:** Lojistas

- **Pré-requisito:** Ter CNPJ;
Equipe de entregadores;
Uma base de faturamento;
Internet;
Computador com Windows 
- **Campo de formulario:**

|**Campo** |**Obrigatório** |**Editável** |**Formato** |
| - | - | - | - |
|Pagamento |sim |nao |Cartao/Dinheiro |

- **Validação no Fluxo do Pedido**
Receber o pedido do cliente apos o pagamento ser liberado pela plataforma, o pedido é preparado e vai para entrega-> apos a entrega se concluida e confirmada pelo entregador o saldo entra em caixa.
- **Caso de falha** 
em casos de falha em entrega ou em repasse do restaurante para o cliente, o cliente podera abrir um chamado e suspender o pagamento.
- **Apoio ao Parceiro** 
caso o pedido seja realizado para pagamento no local  e de alguma forma algum imprevisto surgir e o pagamento falhar, a plataforma arca com parte do gasto para prestar suporte ao logista (ja que fez parte da falha em validar o usuario)


**use storie** 
Sou um restaurante o e estou com medo de entrar no mercado de vendas e tomar algum tipo de prejuizo com pessoas que pedem e não pagam, é dificil manter um tipo de fornecimento desta maneira sem segurança alguma.

Prototipação :
![](https://i.imgur.com/j2HO2sX.jpg)

