const { defineConfig } = require('cypress');
const createEsbuildPlugin = require('@badeball/cypress-cucumber-preprocessor/esbuild').default;
const createBundler = require('@bahmutov/cypress-esbuild-preprocessor');

module.exports = defineConfig({
  e2e: {
    // Configuração para rodar testes Cypress com Cucumber (Gherkin)
    specPattern: 'features/**/*.feature', // Procura na pasta 'features'
    baseUrl: 'https://paciente-staging.lacreisaude.com.br',
    viewportWidth: 1280,
    viewportHeight: 720,
    
    // LINHA DE CORREÇÃO CRÍTICA: Desabilita o arquivo de suporte padrão
    // Isso resolve o erro "global registry" com o cucumber
    supportFile: false, // <-- ESTA É A MUDANÇA!

    // Configura o pré-processador para entender o Gherkin
    async setupNodeEvents(on, config) {
      // Esta linha é necessaria para rodar o Cucumber
      await require('@badeball/cypress-cucumber-preprocessor').addCucumberPreprocessorPlugin(on, config);

      on(
        'file:preprocessor',
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        })
      );

      return config;
    },
  },
});
