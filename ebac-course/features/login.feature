            #language: pt

            Funcionalidade: Login na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero realizar o login na plataforma
            E inserir meu login
            Para conseguir realizar compras online

            Contexto:
            Dado que eu acesse a pagina autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuario "pedromacedo@ebac.com.br"
            E a senha "pepe123"
            Então devo ser direcionado para a tela de checkout


            Cenário: Usuario inexistente
            Quando eu digitar o usuario "pedrohenrique@ebac.com.br"
            E a senha "ebac123@!"
            Então deve exibir uma mensagem de alerta: "Usuario inexistente"


            Cenário: Usuario com senha invalida
            Quando eu digitar o usuario "pedromacedo@ebac.com.br"
            E a senha "ebaclegal123"
            Então deve exibir uma mensagem de alerta "Usuario ou senha invalidos"


            Esquema do Cenario: Autenticar multiplos usuarios
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso
            E ser direcionado para a tela de checkout 

            Exemplos:
            | usuario                   | senha      | mensagem    |
            | "pedromacedo@ebac.com.br" | "pepe123"  | "Olá Pedro" |
            | "joaozinho@ebac.com.br"   | "jojo123"  | "Olá Joao"  |
            | "mariazinha@ebac.com.br"  | "maria123" | "Olá Maria" |
            | "marioluiggi@ebac.com.br" | "wario123" | "Olá Mario" |