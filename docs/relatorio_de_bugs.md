# 🪲 Relatório de Bugs – Lacrei Saúde (Versão Mobile)

## 📦 Ambiente de Teste
- **URL:** https://paciente-staging.lacreisaude.com.br  
- **Navegador:** Google Chrome (Modo Mobile – 390x844)  
- **Data da execução:** 06/11/2025  
- **Ambiente:** Staging  
- **Testador:** Erick Chagas  

---

## ⚠️ BUG-001 — Mensagem genérica na recuperação de senha (e-mail não cadastrado)

**Status:** Aberto  
**Severidade:** Média  
**Prioridade:** Média  
**Funcionalidade:** Recuperação de Senha  
**Cenário relacionado:** TC-007 — Recuperação com e-mail não cadastrado  

**Descrição:**  
Ao tentar recuperar a senha com um e-mail não cadastrado, o sistema exibe a mensagem genérica “Algo deu errado, confira os dados inseridos”.  
Embora isso aumente a segurança, falta clareza para o usuário final.

**Passos para reprodução:**  
1. Acessar a tela de **Login**  
2. Clicar em **“Esqueci minha senha”**  
3. Inserir um e-mail válido, porém inexistente no sistema  
4. Clicar em **“Enviar”**

**Resultado obtido:**  
Mensagem genérica exibida (“Algo deu errado, confira os dados inseridos”).  

**Resultado esperado:**  
Mensagem mais empática e contextual, por exemplo:  
> “Caso o e-mail informado exista, enviaremos um link de redefinição de senha.”

**Impacto:**  
- Experiência do usuário confusa, sem confirmação visual clara.

---

📝 OBS-001 — Alteração de comportamento sem comunicação prévia

Contexto: Durante o desafio técnico, foi observada uma atualização no fluxo de cadastro que alterou o comportamento do botão "Cadastrar" (agora exibe feedback visual quando desabilitado).
Impacto: A mudança não foi comunicada previamente, resultando em divergência entre os cenários validados e o comportamento atual do sistema.
Ação sugerida: Notificar a equipe responsável sobre a importância de versionar e comunicar atualizações em ambientes de teste, garantindo consistência entre versões e registros de QA.

📝 OBS-002 — Alteração de comportamento sem comunicação prévia

Contexto: Durante o desafio técnico, foi observada uma atualização no fluxo de cadastro que alterou o envio do e-mail de confirmação e consequente login para demais etapas.
Impacto: A mudança não foi comunicada previamente, resultando em divergência entre os cenários validados e o comportamento atual do sistema.
Ação sugerida: Notificar a equipe responsável sobre a importância de versionar e comunicar atualizações em ambientes de teste, garantindo consistência entre versões e registros de QA.


## 💬 Observações Gerais
- Nenhum bug causa quebra de layout ou travamento da aplicação.  
- Todos os bugs foram reproduzidos em ambiente de *staging* (Chrome DevTools, modo mobile).

- ⚠️ BUG-004 — Espaçamento de Imagem em Modo Mobile
Status: Aberto
Severidade: Baixa
Prioridade: Baixa
Funcionalidade: Recuperação de Senha

Descrição:
Imagem gera muito espaço desnecessário para que usuário atinja o final da página.

Passos para reprodução:
Em modo Mobile, acessar a tela de Login
Clicar em “Esqueci minha senha”

Resultado obtido:
Observa-se imagem com grandes espaços ao redor.

Resultado esperado:
É possível observar imagem ajustada e otimizada para experiência do usuário

Impacto:
Experiência do usuário impactada de maneira negativa.

⚠️ BUG-005 — Atualização Status Botão Cadastrar
Status: Aberto
Severidade: Baixa
Prioridade: Média
Funcionalidade: Cadastro de Usuário

Descrição:
O botão "Cadastrar" deve ter o aria-disabled="true" e feedback visual claro quando estiver desabilitado (ex: faltando dados nos campos). Essa atualização estava no site dia 05/11.

Passos para reprodução:

1. Abrir página de login
2. Clicar em Criar Conta
3. Preencher campos “Nome civil ou social”, “Sobrenome”, “E-mail”, “Confirme seu e-mail”, “Senha” e “Confirme sua senha”
4. Preencher dois checkbox
5. Clicar em cadastrar
