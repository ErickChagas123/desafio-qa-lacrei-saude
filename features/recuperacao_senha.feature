Feature: Recuperação de Senha

O objetivo desta feature é validar o fluxo de recuperação de senha, garantindo a acessibilidade e segurança da pessoa usuária.

Cenário: Recuperação de senha com e-mail cadastrado
Dado que estou na página de Login
Quando clico no link "Esqueci minha senha"
E eu preencho o campo "E-mail" com um endereço de e-mail válido e cadastrado
E eu clico no botão "Enviar"
Então o sistema deve exibirá uma página com a mensagem: "Caso o e-mail fornecido exista, será enviada um link para redefinição de senha. Por favor, clique em reenviar se não receber o link. Não recebeu o e-mail? Reenviar.."
E o usuário pode optar pelo reenvio ou retornar para a tela inicial

Cenário: Recuperação de senha com e-mail inválido
Dado que estou na página de Login
Quando clico no link "Esqueci minha senha"
E eu preencho o campo "E-mail" com um endereço de e-mail inválido 
Então o sistema deve exibirá uma página com a mensagem: "Por favor, utilize um formato de e-mail válido. Por exemplo: email@dominio.com.br"
E o usuário pode optar pelo reenvio ou retornar para a tela inicial

Cenário: Tentativa de recuperação com e-mail NÃO cadastrado (Segurança/UX)
Dado que estou na página de Login
Quando clico no link "Esqueci minha senha"
E eu preencho o campo "E-mail" com um endereço de e-mail válido, mas não cadastrado
E eu clico no botão "Enviar"
Então o sistema deve exibirá a frase "Algo deu errado, por favor, confira os dados inseridos e tente novamente."
E o usuário pode retornar para a tela inicial ou preencher outro endereço
