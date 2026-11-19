#language: pt

Funcionalidade: Concluir cadastro no checkout 
Como cliente da EBAC-SHOP
Quero fazer meu cadastro
Para finalizar minha compra

Contexto: Dado que eu acesse a tela de checkout da EBAC-SHOP para finalizar uma compra

Cenario: Cadastro com todos os dados obrigatórios (*) válidos
Quando eu preencher todos os campos obrigatórios marcados com asteriscos 
E clicar no botao "Finalizar compra"
Então o meu cadastro deve ser concluido e a compra finalizada com sucesso


Esquema do Cenario: Validar restriçao de email com formato invalido
Quando eu preencher os dados obrigatorios 
Mas informar o campo email com o valor <email_invalido>
E clicar no botao "Finalizar compra"
Então o sistema nao deve permitir o cadastro
E deve inserir uma mensagem de erro indicando o motivo

Exemplos: 
|email_invalido|
|"pedro.macedo.com"|
|"pedro.macedo@.com"|
|"pedromacedo@ebac"|

Cenario: tentar cadastrar deixando campos obrigatorios vazios
Quando eu deixar um ou mais campos obrigatorios vazios 
E clicar no botao "Finalizar compra"
Então o sistema deve exibir uma mensagem de alerta exigindo o preenchimento


