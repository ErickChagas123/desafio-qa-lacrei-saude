Feature: Cadastro de pessoa usuária
  O objetivo desta feature é validar o fluxo de criação de conta no ambiente mobile.

  Cenário: Cadastro com dados válidos
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E preencho todos os campos obrigatórios com dados válidos
      | Campo                | Valor                   |
      | Nome                 | João                    |
      | Sobrenome            | Silva                   |
      | E-mail               | novix96655@wivstore.com |
      | Confirme seu E-mail  | novix96655@wivstore.com |
      | Senha                | Banana.00               |
      | Confirme sua Senha   | Banana.00               |
    E marco as duas checkboxes obrigatórias
    E clico no botão "Cadastrar"
    Então o sistema deve concluir o cadastro e redirecionar o usuário para a tela inicial

  Cenário: Tentativa de cadastro com campo Nome vazio
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E deixo o campo obrigatório "Nome" vazio
    E eu preencho as demais informações corretamente (exceto Nome) e seleciono os checkboxes
    E clico no botão "Cadastrar"
    Então a página volta para o topo
    E o campo "Nome" fica marcado em vermelho, acompanhado do texto "O Nome é obrigatório"
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

  Cenário: Tentativa de cadastro com campo Sobrenome vazio
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E deixo o campo obrigatório "Sobrenome" vazio
    E eu preencho as demais informações corretamente (exceto Sobrenome) e seleciono os checkboxes
    E clico no botão "Cadastrar"
    Então a página volta para o topo
    E o campo "Sobrenome" fica marcado em vermelho, acompanhado do texto "O Sobrenome é obrigatório"
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

  Cenário: Tentativa de cadastro com campo e-mail vazio
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E deixo o campo obrigatório "E-mail" vazio
    E eu preencho as demais informações corretamente (exceto E-mail) e seleciono os checkboxes
    E clico no botão "Cadastrar"
    Então a página volta para o topo
    E o campo "E-mail" fica marcado em vermelho, acompanhado do texto "O e-mail é obrigatório"
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

  Cenário: Tentativa de cadastro com campo Confirme seu e-mail vazio
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E deixo o campo obrigatório "Confirme seu e-mail" vazio
    E eu preencho as demais informações corretamente (exceto Confirme seu e-mail) e seleciono os checkboxes
    E clico no botão "Cadastrar"
    Então a página volta para o topo
    E o campo "Confirme seu e-mail" fica marcado em vermelho, acompanhado do texto "O e-mail é obrigatório"
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

  Cenário: Tentativa de cadastro com e-mails conflitantes
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E eu preencho todos os campos obrigatórios corretamente,
    E o campo "E-mail" é diferente do campo "Confirme seu e-mail"
    Então é exibida a mensagem "Os e-mails não correspondem, digite novamente"
    E o usuário deve ajustar para prosseguir com a tarefa

Cenário: Tentativa de cadastro com campo senha vazio
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E deixo o campo obrigatório "senha" vazio
    E eu preencho as demais informações corretamente (exceto senha) e seleciono os checkboxes
    E clico no botão "Cadastrar"
    Então a página volta para o campo
    E o campo "Confirme sua senha" fica marcado em vermelho, acompanhado do texto "A senha é obrigatória"
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

Cenário: Tentativa de cadastro com campo Confirme sua senha vazio
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E deixo o campo obrigatório "Confirme sua senha" vazio
    E eu preencho as demais informações corretamente (exceto Confirme sua senha) e seleciono os checkboxes
    E clico no botão "Cadastrar"
    Então a página volta para o campo
    E o campo "Confirme sua senha" fica marcado em vermelho, acompanhado do texto "A confirmação da senha é obrigatória"
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

 Cenário: Tentativa de cadastro com senhas conflitantes
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E eu preencho todos os campos obrigatórios corretamente,
    E o campo "Senha" é diferente do campo "Confirme sua senha"
    Então é exibida a mensagem "Senhas incompatíveis, tente novamente."
    E o usuário deve ajustar para prosseguir com a tarefa

Cenário: Validação de força de senha exibida dinamicamente
  Dado que estou no campo "Senha" da página de Criação de Conta
  Quando eu digito uma senha fraca (ex: "12345")
  Então o sistema deve exibir em tempo real os requisitos de senha não atendidos (letra maiúscula, minúscula, número, caractere especial, 8 caracteres)
  E quando eu digito uma senha forte ("Banana.00"), todos os requisitos devem ser marcados como atendidos (verde)

Cenário: Tentativa de cadastro sem preencher checkbox "Li e concordo com os termos de uso" e "Políticas de Privacidade"
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E não preencho o primeiro checkbox
    E eu preencho as demais informações corretamente e seleciono o segundo checkbox
    E clico no botão "Cadastrar"
    Então é exibida a mensagem "Você deve aceitar os termos" em vermelho
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

Cenário: Tentativa de cadastro sem preencher checkbox "Tenho 18 anos ou mais"
    Dado que estou na página inicial
    Quando clico em "Criar Conta"
    E não preencho o primeiro checkbox
    E eu preencho as demais informações corretamente e seleciono o primeiro checkbox
    E clico no botão "Cadastrar"
    Então é exibida a mensagem "Você deve ter 18 anos ou mais" em vermelho
    E o usuário deve conseguir finalizar a etapa após preencher o campo corretamente

Cenário: Tentativa de cadastro com e-mail já cadastrado (Regra de Negócio)
  Dado que o e-mail "novix96655@wivstore.com" já está ativo no sistema
  Quando estou na página de Criação de Conta
  E eu preencho todos os campos obrigatórios com o e-mail já existente
  E eu clico no botão "Cadastrar"
  Então o sistema deve exibir a mensagem "Este e-mail já está cadastrado"
  E o usuário deve ser redirecionado para a tela de Login ou Recuperação de Senha
