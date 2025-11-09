♿ **Registro de Teste de Acessibilidade (WCAG)**<br>

**Objetivo do Teste**

Avaliar o nível de conformidade do produto com as diretrizes de Acessibilidade do Conteúdo da Web (WCAG 2.1), garantindo que a interface seja utilizável por pessoas com deficiência ou que utilizam tecnologias assistivas, como leitores de tela e navegação por teclado.

**Metodologia**

A avaliação foi dividida em duas etapas:

a) Auditoria Automatizada: Utilização do Lighthouse (modo Mobile) para cobertura das auditorias básicas de contraste, etiquetas (labels) e estrutura DOM.<br>
b) Teste Manual Exploratório: Simulação de fluxos críticos utilizando apenas o teclado (navegação por Tab e Shift + Tab) e simulação de leitor de tela.

**Resultados da Auditoria Automatizada**

Página Avaliada - Página de Criação de Conta (Simulação da Operação Crítica "Cadastro")<br>
Ferramenta Principal - Lighthouse (Accessibility Audit)<br>
Ambiente de Simulação - Mobile<br>
Score de Acessibilidade - 100/100<br>

Conclusão Automatizada<br>
O Lighthouse não identificou nenhuma violação técnica das regras de acessibilidade WCAG 2.1. O código possui um bom contraste, o uso de aria-labels e o mapeamento de elementos estão em conformidade com as diretrizes básicas. Este é um resultado excelente.

**Resultados do Teste Manual (Simulação de Usuário)**

As auditorias manuais, cruciais para validar 100% da acessibilidade, revelaram os seguintes pontos:

🟢 Testes Aprovados (Conformidade com WCAG)

Navegação por Teclado - ✅ Passou<br>
Indicação de Foco (Focus) - ✅ Passou<br>
Leitor de Tela (Simulação) - ✅ Passou<br> 
Os campos de formulário (Nome, E-mail, Senha) estão corretamente associados às suas etiquetas e são lidos de forma clara pela tecnologia assistiva.

**Sugestão**<br>
O botão "Cadastrar" deve ter o *aria-disabled="true"* e feedback visual claro quando estiver desabilitado (ex: faltando dados nos campos). Essa atualização estava no site dia 05/11.
