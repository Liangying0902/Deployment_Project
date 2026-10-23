// Integration tests run against a live server: BASE_URL=http://localhost:3000 npm run test:integration
process.env.JEST_JUNIT_OUTPUT_NAME = 'junit-integration.xml';

module.exports = {
  testEnvironment: 'node',
  testMatch: ['<rootDir>/tests/integration/**/*.test.js'],
  reporters: ['default', 'jest-junit'],
};
