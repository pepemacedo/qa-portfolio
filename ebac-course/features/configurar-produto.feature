#language: pt

Funcionalidade: Configurar produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que o cliente acesse a EBAC-SHOP
E tenha realizado o login 

Cenario: Adicionar produto ao carrinho com todos os dados preenchidos

Quando o cliente selecionar a cor "Blue", o tamanho "M" e a quantidade "2"
E clicar no botão "Comprar"
Então o produto deve ser inserido no carrinho com sucesso

Cenario: Tentar adicionar produto com campos obrigatorios vazios

Quando o cliente selecionar a cor "Orange" e a quantidade "1"
Mas não selecionar o tamanho
E clicar no botão "Comprar"
Então o sistema deve exibir um alerta exigindo a seleçao do tamanho

Esquema do Cenario: Validar limite de produtos por venda
Quando o cliente selecionar a cor "Red", o tamanho "GG" e a quantidade <quantidade> 
E clicar no botao "Comprar"
Então o sistema deve mostrar o <resultado_esperado> 

            Exemplos:
            | quantidade_escolhida | resultado_esperado                                 |
            | "10"                 | "produto adicionado ao carrinho"                   |
            | "11"                 | "alerta de limite maximo de 10 produtos por venda" |


Cenario: Limpar seleçoes de configuraçao do produto
Dado que o cliente tenha selecionado a cor "Blue", o tamanho "G" e a quantidade "5"
Quando o cliente clicar no botao "Limpar"
Então as seleçoes de cor, tamanho e quantidade devem voltar ao estado original vazio


