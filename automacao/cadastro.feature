language: pt
Funcionalidade: Cadastro de Nova Pessoa Usuária
Como um usuário não cadastrado na plataforma
Eu desejo criar uma nova conta
Para ter acesso à área logada da Lacrei Saúde

Contexto: Dado que estou na página de criação de conta
Cenario: Cadastro de Usuário com Dados Válidos (Sucesso)
Quando eu preencho o campo "nome Completo" com "Maria da Silva Automatizada"
E preencho o campo "email" com um email único gerado automaticamente
E preencho o campo "senha" com "SenhaSegura123!"
E preencho o campo "confirma Senha" com "Senha Segura123!"
E clico no botão "Cadastrar"
Então a URL deve conter "/dashboard" apos o login
