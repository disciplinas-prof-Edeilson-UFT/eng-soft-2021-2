**Requisitos de Lojista - Cadastrar Lojas Parceiras**

**-Atores:**

Administrador do Sistema - Administra o sistema.

Lojistas - Entra como parceiro no sistema.

**-Descrição Sucinta:**

Os lojistas efetuam cadastros para serem novos parceiros e divulgar seus produtos.

**-Pré-Condição:**

O lojista tem que disponibilizar de internet e CNPJ.

**-Fluxo Principal:**

1. Acessar a tela principal do sistema web
2. Clicar na aba Restaurante e Mercados
3. Definir o tipo de loja
4. Preencher os formulário com nome, e-mail, e celular
5. Definir endereço da loja
6. Escolher o plano desejado entre plano básico e plano de entrega
7. Definir responsável legal do estabelecimento
8. Informar os dados CNPJ da loja, CPF e RG do titular
9. Tipo do negócio, MEI ou ME
10. Definir os dados bancários
11. Confirmar E-mail
12. Assinar o contrato
13. Enviar formulário

**-Campo de Formulário:**

**Fluxo Principal 4**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Nome | Sim | Sim | Texto |
| E-mail | Sim | Sim | Texto |
| Celular | Sim | Sim | Texto |

**Fluxo Principal 5**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| CEP | Sim | Sim | Texto |
| Estado | Sim | Sim | Texto |
| Cidade | Sim | Sim | Texto |
| Bairro | Sim | Sim | Texto |
| Endereço | Sim | Sim | Texto |
| Número | Sim | Sim | Texto |
| Complemento | Não | Sim | Texto |

**Fluxo Principal 6**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Tipo Loja | Sim | Sim | Booleano |

**Fluxo Principal 7**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Nome | Sim | Sim | Texto |
| CPF | Sim | Sim | Texto |
| RG do titular | Sim | Sim | Inteiro |

**Fluxo Principal 8**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| CNPJ | Sim | Sim | Texto |
| Razão social | Sim | Sim | Texto |
| Nome | Sim | Sim | Texto |
| Telefone | Sim | Sim | Texto |
| Especialidade | Sim | Sim | Texto |

**Fluxo Principal 9**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Tipo do negócio | Sim | Sim | Texto |

**Fluxo Principal 10**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Banco | Sim | Sim | Texto |
| Agência | Sim | Sim | Texto |
| Conta | Sim | Sim | Texto |
| Dígito | Sim | Sim | Inteiro |

**Fluxo Principal 11**

| **Campo** | **Obrigatório?** | **Editável?** | **Formato** |
| --- | --- | --- | --- |
| Email | Sim | Sim | Texto |

**-Opções do Administrador:**

| **Campo** | **Descrição** | **Atalho** |
| --- | --- | --- |
| Confirmar Formulário | Confirma o formulário | - |
| Recusar o Formulário | Recusa o formulário | - |

**-Relatório do Usuário:**

| **Campo** | **Descrição** | **Formato** |
| --- | --- | --- |
| - | - | - |

**User Stories: Cadastrar Lojas Parceiras**

1. Eu como Administrador gostaria de um sistema o qual me facilita aprovar ou recusar um Lojista como potencial parceiro.
2. Eu como Administrador gostaria de um sistema o qual me permita olhar informações do lojista a fim de termos uma parceria com maior sinergia de acordo com seus dados.
3. Eu como Lojista gostaria de um sistema que me auxilie a angariar mais possíveis clientes de forma fácil de acordo com meus dados.

**Prototipação**

<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/01.png" width="200" alt="01" title="01"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/02.png" width="200" alt="02" title="02"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/03.png" width="200" alt="03" title="03"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/04.png" width="200" alt="04" title="04"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/05.png" width="200" alt="05" title="05"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/06.png" width="200" alt="06" title="06"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/07.png" width="200" alt="07" title="07"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/08.png" width="200" alt="08" title="08"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/09.png" width="200" alt="09" title="09"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/10.png" width="200" alt="10" title="10"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/11.png" width="200" alt="11" title="11"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/12.png" width="200" alt="12" title="12"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/13.png" width="200" alt="13" title="13"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/14.png" width="200" alt="14" title="14"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/15.png" width="200" alt="15" title="15"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/16.png" width="200" alt="16" title="16"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/17.png" width="200" alt="17" title="17"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/18.png" width="200" alt="18" title="18"/>
<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/19.png" width="200" alt="19" title="19"/>


**Diagrama**

<img src="https://raw.githubusercontent.com/nnmf/R17_ES/master/requisito_lojista_imagens/ES_Resquisito_do_Lojista.jpeg" width="200" alt="Diagrama caso de uso" title="Diagrama caso de uso"/>