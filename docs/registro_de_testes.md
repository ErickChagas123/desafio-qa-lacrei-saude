# 📋 Registro de Testes – Versão Mobile (Lacrei Saúde)

## 🧩 Funcionalidade: Cadastro de Pessoa Usuária

| ID      | Cenário                                            | Status | Prioridade | Severidade | Evidência / Link                                  |
|----------|----------------------------------------------------|---------|-------------|-------------|--------------------------------------------------|
| TC-001  | Cadastro com dados válidos                         | ✅ Passou | Alta        | Média       | [cadastro.feature](../features/cadastro.feature) |
| TC-002  | Tentativa de cadastro com campo Nome vazio         | ✅ Passou | Alta        | Baixa       | [cadastro.feature](../features/cadastro.feature) |
| TC-003  | Tentativa de cadastro com e-mails conflitantes     | ✅ Passou | Alta        | Média       | [cadastro.feature](../features/cadastro.feature) |
| TC-004  | Tentativa de cadastro com e-mail já cadastrado     | ⚠️ Bug    | Alta        | Alta        | [cadastro.feature](../features/cadastro.feature) |

---

## 🔐 Funcionalidade: Recuperação de Senha

| ID      | Cenário                                            | Status | Prioridade | Severidade | Evidência / Link                                        |
|----------|----------------------------------------------------|---------|-------------|-------------|----------------------------------------------------------|
| TC-005  | Recuperação de senha com e-mail cadastrado          | ✅ Passou | Alta        | Média     | [recuperacao_senha.feature](../features/recuperacao_de_senha.feature) |
| TC-006  | Recuperação de senha com e-mail inválido            | ✅ Passou | Média       | Baixa     | [recuperacao_senha.feature](../features/recuperacao_de_senha.feature) |
| TC-007  | Recuperação de senha com e-mail não cadastrado      | ⚠️ Bug    | Alta        | Alta      | [recuperacao_senha.feature](../features/recuperacao_de_senha.feature) |

---

### 💬 Observações Gerais
- O fluxo de **cadastro** está funcional, mas não apresenta tela de confirmação, o que impacta UX.  
- O fluxo de **recuperação de senha** exibe mensagens genéricas para e-mails inexistentes, o que é positivo para segurança, mas dificulta o debug.
-   
- Testes realizados em ambiente *staging* no Chrome DevTools (modo mobile).  
