module.exports = {
  root: true,
  env: {
    es6: true,
    node: true,
  },
  extends: [
    "eslint:recommended",
    "plugin:import/errors",
    "plugin:import/warnings",
    "plugin:import/typescript",
    "google",
    "plugin:@typescript-eslint/recommended",
  ],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: ["tsconfig.json", "tsconfig.dev.json"],
    tsconfigRootDir: __dirname,
    sourceType: "module",
  },
  ignorePatterns: [
    "/lib/**/*", // Ignore built files.
  ],
  plugins: [
    "@typescript-eslint",
    "import",
  ],
  rules: {
    "import/no-unresolved": 0,
    "quotes": "off",
    "indent": "off",
    "eol-last": "off",
    "linebreak-style": "off",
    "new-cap": "off",
    "no-unused-vars": "off",
    "no-undef": "off",
    "require-jsdoc": "off",
    "object-curly-spacing": "off",
    "comma-dangle": "off",
    "semi": "off",
    "max-len": "off",
    "spaced-comment": "off",
    "no-var": "off",
    "guard-for-in": "off",
    "no-trailing-spaces": "off",
    "no-multiple-empty-lines": "off",
    "space-before-function-paren": "off",
    "no-empty": "off",
    "no-prototype-builtins": "off",
  },
};
