import eslintJs from '@eslint/js'
import tseslint from 'typescript-eslint'
import prettier from 'eslint-config-prettier'

export default [
  // Base ESLint recommended config
  eslintJs.configs.recommended,

  // TypeScript support
  ...tseslint.configs.recommended,

  // Prettier integration
  {
    rules: {
      ...prettier.rules,
      'prettier/prettier': 'error',
    },
  },

  // Custom rules
  {
    files: ['**/*.ts'],
    languageOptions: {
      parser: tseslint.parser,
      parserOptions: {
        project: './tsconfig.json',
        sourceType: 'module',
      },
    },
  },
]
