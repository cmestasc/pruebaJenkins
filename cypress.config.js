const { defineConfig } = require("cypress");

module.exports = defineConfig({
  reporter: 'junit',
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
