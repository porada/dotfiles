import { defineConfig, prioritizeKeys } from '@standard-config/prettier';

export default defineConfig({
	overrides: [
		{
			files: ['.vscode/sessions.json'],
			options: {
				jsonSortOrder: prioritizeKeys('name', 'commands', 'active'),
			},
		},
	],
});
