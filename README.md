# 🏥 Desafio Técnico – QA Lacrei Saúde  

Este repositório contém os artefatos criados durante a execução do **Desafio Técnico de Quality Assurance** da **Lacrei Saúde**, com foco em testes funcionais, acessibilidade, desempenho e documentação.  

## 🧭 Escopo do Projeto

Foram validados os seguintes fluxos dentro do ambiente de staging da plataforma:

| Fluxo | Status | Observação |
|:------|:--------|:----------|
| Cadastro de pessoa usuária | ✅ Testado e validado (positivos e negativos) |
| Recuperação de senha | ✅ Testado e validado (fluxos com e-mail cadastrado, inválido e não cadastrado) |
| Pós-cadastro / Busca de profissional | ❌ Bloqueado por bug no login após cadastro |
| Edição de perfil | ❌ Não acessível devido ao bloqueio de login |

---

## 🗂️ Estrutura do Repositório
📁 lacrei-qa-desafio/<br>
┣ 📁 docs/ # Documentos de suporte e registro de execução dos testes <br>
┃ ┣ relatorio_de_bugs.md<br>
┃ ┗ registro_de_testes.md<br>
┣ 📁 features/ # Casos de teste em linguagem Gherkin<br>
┃ ┣ cadastro.feature<br>
┃ ┣ recuperacao_senha.feature<br>
┃ ┗ busca_profissional.feature<br>
┣ 📁 registros/ # Registros de execução manual dos testes<br>
┃ ┣ registro_cadastro.md<br>
┃ ┣ registro_recuperacao_senha.md<br>
┃ ┗ registro_busca_profissional.md<br>
┗ README.md # Este documento
---

## ⚙️ Ambiente de Testes

- **Ambiente:** [https://paciente-staging.lacreisaude.com.br](https://paciente-staging.lacreisaude.com.br)  
- **Navegador:** Google Chrome (modo mobile)  
- **Ferramentas utilizadas:**
  - Gherkin (Cucumber) – definição de cenários de teste  
  - Notion – documentação e rastreabilidade dos testes  
  - Lighthouse – auditoria de performance e acessibilidade  
  - Chrome DevTools – inspeção e responsividade  
  - GitHub – versionamento e relatórios  

---
Configuração do Ambiente de Automação<br>
Para configurar e executar os testes automatizados localmente, siga estes passos:
1. Pré-requisitos: Instale o Node.js (versão LTS recomendada).
2. Instalação de Dependências: Na raiz do projeto, execute o comando para instalar o Cypress e as
bibliotecas Cucumber/Gherkin:
npm install


## 🧪 Execução dos Testes

Os testes foram executados **manualmente**, seguindo os cenários descritos em linguagem **Gherkin**.

### 🔹 Casos de Teste Implementados

| ID | Feature | Status | Tipo |
|:---|:---------|:--------|:------|
| TC-001 | Cadastro de usuário | ✅ Passou | Funcional |
| TC-002 | Recuperação de senha | ✅ Passou | Funcional |
| TC-003 | Login após cadastro | ❌ Falhou | Bloqueador |
| TC-004 | Busca de profissional | 🚫 Não executado | Dependente de login |

📘 Casos completos: [`/features`](features/)  
📄 Registro de execução: [`/docs/registro_de_testes.md`](docs/registro_de_testes.md)

---

## 🪲 Principais Bugs Identificados

| ID | Descrição | Impacto | Status |
|:---|:------------|:----------|:--------|
| **BUG-001** | Após cadastro, usuário não consegue realizar login, mesmo após confirmação de e-mail. | 🚨 Crítico | Reportado à equipe |
| **BUG-002** | Mensagem genérica na recuperação de senha ao usar e-mail não cadastrado. | ⚠️ Médio | Documentado |
| **BUG-003** | Falta de feedback visual quando botão “Prosseguir” está desabilitado. | 🟡 Baixo | Observação de UX |

📄 Relatório detalhado: [`/docs/relatorio_bugs.md`](docs/relatorio_bugs.md)

---

## ⚡ Teste de Desempenho

**Ferramenta:** Lighthouse  
**Cenário validado:** Página de cadastro e inicial  

| Métrica | Resultado |
|:--------|:-----------|
| First Contentful Paint (FCP) | 1.0s |
| Speed Index | 2.3s |
| Time to Interactive (TTI) | 2.8s |

📄 Detalhes: [`/docs/teste_desempenho.md`](docs/teste_desempenho.md)

---

## ♿ Teste de Acessibilidade

**Ferramenta:** Lighthouse (modo Accessibility Audit)  

| Item Avaliado | Resultado |
|:---------------|:-----------|
| Navegação via teclado | ✅ Funcional |
| Contraste de cores | ⚠️ Pequenas variações em botões secundários |
| Labels e placeholders | ✅ Presentes e coerentes |
| Leitor de tela (NVDA) | ✅ Compatível |
| Pontuação geral | 96/100 |

📄 Insights e recomendações: [`/docs/teste_acessibilidade.md`](docs/teste_acessibilidade.md)

---

## 📱 Teste de Responsividade

- Testado em **mobile (400x472px)** e **desktop (1920x1080px)**.  
- Layouts mantêm integridade visual e funcionalidade.  
- Pequeno desalinhamento de botão observado no rodapé mobile.

📄 Relatório: [`/docs/teste_responsividade.md`](docs/teste_responsividade.md)

---

## 🔄 Automação e CI/CD (Prototipagem)

> ⚙️ **Objetivo:** Simular estrutura de automação do fluxo de cadastro com **Cypress + Cucumber**.

- Estrutura base criada em `/cypress/`  
- Pipeline configurado via **GitHub Actions** (execução simulada em cada commit)
- Teste automatizado cobre o fluxo de cadastro com dados válidos.

📁 Arquivos principais:
- `cypress/e2e/cadastro.cy.js`  
- `.github/workflows/ci.yml`

---

## 🧾 Conclusão

O desafio técnico foi conduzido com foco em **qualidade funcional, documentação completa e empatia na experiência do usuário**.  
Mesmo com o bloqueio no login, as demais etapas foram executadas e documentadas fielmente, garantindo visibilidade total do processo de QA.

---
