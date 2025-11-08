# 📋 Registro de Testes – Versão Mobile (Lacrei Saúde)

## 🧩 Funcionalidade: Cadastro de Pessoa Usuária

| ID          | Cenário                                            | Status | Prioridade | Severidade | Evidência / Link                                  |
|------------|----------------------------------------------------|-------|-----------|-------------|--------------------------------------------------|
| TC-001  | Cadastro com dados válidos                                  | ✅ Passou | Alta        | Média       | [cadastro.feature](../features/cadastro.feature) |
| TC-002  | Tentativa de cadastro com campo Nome vazio                  | ✅ Passou | Alta        | Baixa       | [cadastro.feature](../features/cadastro.feature) |
| TC-003  | Tentativa de cadastro com campo Sobrenome vazio             | ✅ Passou | Alta        | Média       | [cadastro.feature](../features/cadastro.feature) |
| TC-004  |  Tentativa de cadastro com campo E-mail vazio               | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-005  |  Tentativa de cadastro com campo Confirme seu e-mail vazio  | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-006  | Tentativa de cadastro com e-mails conflitantes              | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-007  | Tentativa de cadastro com campo Senha vazio                 | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-008  | Tentativa de cadastro com campo Confirme sua senha vazio    | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-009  | Validação de força de senha exibida dinamicamente           | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-010  | Tentativa de cadastro sem preencher checkbox "Li e concordo com os termos de uso" e "Políticas de Privacidade"                | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-011  | Tentativa de cadastro sem preencher checkbox "Tenho 18 anos ou mais"               | ✅ Passou | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |
| TC-012  | Tentativa de cadastro com e-mail já cadastrado (Regra de Negócio) | ⚠️ Bug  | Alta    | Médio        | [cadastro.feature](../features/cadastro.feature) |

---

## 🔐 Funcionalidade: Recuperação de Senha

| ID      | Cenário                                            | Status | Prioridade | Severidade | Evidência / Link                                        |
|----------|----------------------------------------------------|---------|-------------|-------------|----------------------------------------------------------|
| TC-013  | Recuperação de senha com e-mail cadastrado          | ✅ Passou | Alta        | Média     | [recuperacao_senha.feature](../features/recuperacao_senha.feature) |
| TC-014  | Recuperação de senha com e-mail inválido            | ✅ Passou | Média       | Baixa     | [recuperacao_senha.feature](../features/recuperacao_senha.feature) |
| TC-015  | Recuperação de senha com e-mail não cadastrado      | ⚠️ Bug    | Alta        | Alta      | [recuperacao_senha.feature](../features/recuperacao_senha.feature) |

---

### 💬 Observações Gerais
- O fluxo de **cadastro** está funcional, mas não apresenta tela de confirmação, o que impacta UX.  
- O fluxo de **recuperação de senha** exibe mensagens genéricas para e-mails inexistentes, o que é positivo para segurança, mas dificulta o debug.
- Testes realizados em ambiente *staging* no Chrome DevTools (modo mobile).  
