# 📱 Teste de Responsividade – Lacrei Saúde

## 🌐 Ambiente
- **URL:** [(https://paciente-staging.lacreisaude.com.br/)]
- **Navegador:** Google Chrome (DevTools)
- **Resoluções testadas:**
  - **Mobile:** 390x844 (iPhone 12)
  - **Desktop:** 1920x1080

---

## 🧩 Validação de Layout

| Página | Dispositivo | Resultado | Observações |
|--------|--------------|------------|--------------|
| Página Inicial | Mobile | ✅ | Elementos organizados e campos de texto bem ajustados. |
| Página Inicial | Desktop | ✅ | Layout proporcional e bem distribuído. |
| Tela de Cadastro | Mobile | ✅ | Estrutura fluida e legível, sem scroll lateral. |
| Tela de Cadastro | Desktop | ✅ | Alinhamento e espaçamento adequados. |
| Recuperação de Senha | Mobile | ⚠️ | Imagem principal muito grande, gerando espaçamento vertical excessivo antes do conteúdo. |
| Recuperação de Senha | Desktop | ✅ | Layout limpo, sem distorções. |

---

## ⚙️ Validação de Funcionalidade

| Componente | Mobile | Desktop | Observações |
|-------------|---------|----------|--------------|
| Botão “Criar Conta” | ✅ | ✅ | Totalmente funcional. |
| Campos de Cadastro | ✅ | ✅ | Resposta rápida e layout responsivo. |
| Checkbox de Termos | ✅ | ✅ | Boa área de toque, sem sobreposição. |
| Formulário de Recuperação de Senha | ✅ | ✅ | Fluidez e legibilidade preservadas. |

---

## 💡 Conclusão
O sistema apresenta **boa adaptação responsiva** tanto em mobile quanto em desktop.  
Apenas uma observação de UX foi registrada devido ao **tamanho excessivo da imagem principal** na versão mobile, o que pode prejudicar a experiência inicial do usuário.  
Fora isso, todos os elementos estão funcionais e visualmente coerentes.

---

## Bug Observado

| ID | Descrição | Impacto | Status |
|----|------------|----------|--------|
| BUG-RSP-001 | Imagem principal muito grande no mobile, gerando espaçamento vertical desnecessário. | Baixo | Aberto |

---

📅 **Data do Teste:** 07/11/2025
