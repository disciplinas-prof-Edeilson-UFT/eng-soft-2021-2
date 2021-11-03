# R5 - Acompanhamento dos pedidos

    O sistema deve permitir o usuário acompanhar os seus pedidos, tanto de restaurantes como de supermercados. 

## Atores

    - Cliente: Usuário geral do aplicativo. Consegue editar e cancelar pedidos.
    - Restaurante: Usuário que prepara pedidos. Consegue editar, finalizar e cancelar pedidos.
    - Supermercado: Usuário que prepara pedidos. Consegue editar e cancelar pedidos.  

## Pré-condição

    O Cliente deve ter um perfil no aplicativo, está logado no sistema e ter feito pelo menos um pedido, podendo este está em um dos 3 estados:
    - Pedido em andamento
    - Pedido finalizado
    - Pedido cancelado

## Fluxo principal

    1 - Após o Cliente realizar um pedido, o sistema direciona o mesmo para a tela de acompanhamento de pedidos.
    2 - O Cliente pode visualizar(em forma de lista) os pedidos em andamento, finalizados e cancelados.
    3 - O Cliente pode visualizar os detalhes de um pedido, editar ou cancelar um pedido dependendo do estado do mesmo.

## Casos de uso

![Caso de uso](https://i.imgur.com/dyodZK7.png)

## Telas
Tela inicial dos Pedidos
![Tela inicial dos Pedidos](https://i.imgur.com/Rn4mgTa.jpg)
Lista do pedidos
![Lista do pedidos](https://i.imgur.com/CkLhajE.jpg)
Pedido
![Pedido](https://i.imgur.com/Qsllrh4.jpg)
