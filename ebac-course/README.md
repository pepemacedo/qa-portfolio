# 🎓 Exercícios do curso de Qualidade de Software (EBAC)

Cenários de teste escritos em **Gherkin (BDD)** durante o curso de Engenharia de Qualidade de Software da EBAC, para a loja virtual de treino **EBAC-SHOP**.

> Exercícios de estudo. A EBAC-SHOP é um sistema criado para as aulas.

---

## 🔍 Visão geral

### ✅ Objetivos
- Transformar requisitos em user stories e cenários de teste legíveis
- Cobrir o fluxo feliz e os fluxos de erro de cada funcionalidade
- Praticar o uso de dados de teste variados com esquemas de cenário

### 🧪 Técnicas aplicadas
| Técnica | Onde aparece |
|---|---|
| User story (Como… quero… para…) | todas as funcionalidades |
| Contexto compartilhado entre cenários | login, cadastro e configuração de produto |
| Cenário positivo e negativo | login com credenciais válidas e inválidas |
| Esquema do cenário com tabela de exemplos | e-mails inválidos, múltiplos usuários e limite de quantidade |
| Análise de valor limite | limite de 10 produtos por venda (10 aceito, 11 recusado) |
| Validação de campos obrigatórios | cadastro e configuração de produto |

---

## ⚙️ Ferramentas

| Finalidade | Ferramenta |
|---|---|
| Especificação de cenários | Gherkin em português (`#language: pt`) |
| Edição | VS Code |
| Documentação | Word e Markdown |
| Versionamento | Git e GitHub |

---

## 📁 Conteúdo

| Arquivo | Funcionalidade | O que cobre |
|---|---|---|
| [login.feature](features/login.feature) | Login na EBAC-SHOP | autenticação válida, usuário inexistente, senha inválida e vários usuários com mensagem de boas-vindas |
| [cadastro-checkout.feature](features/cadastro-checkout.feature) | Concluir cadastro no checkout | cadastro válido, três formatos de e-mail inválido e campos obrigatórios vazios |
| [configurar-produto.feature](features/configurar-produto.feature) | Configurar produto | produto completo no carrinho, tamanho obrigatório, limite de 10 por venda e limpar seleções |
| [Análise qualitativa de produto](docs/analise-qualitativa-de-produto.docx) | Análise de produto | documento do curso |

---

> Curso em andamento: novos exercícios serão adicionados conforme eu concluir os módulos.

## 📝 Observações

- Os arquivos são especificações escritas; não são testes automatizados executáveis.
- Os dados de login são fictícios.

---

## 👤 Autor

Pedro Macedo, QA Júnior em formação · [LinkedIn](https://www.linkedin.com/in/pedromacedo0)
