import type { Config } from 'prettier';

const config: Config = {
	plugins: ['prettier-plugin-sh'],
	singleQuote: true,
	overrides: [
		{
			files: ['*.json'],
			options: {
				plugins: ['prettier-plugin-sort-json'],
				jsonRecursiveSort: true,
			},
		},
		{
			files: '*.ts',
			options: {
				bracketSpacing: true,
				quoteProps: 'consistent',
				trailingComma: 'es5',
			},
		},
		{
			files: ['.vscode/sessions.json'],
			options: {
				jsonSortOrder: prioritizeKeys('name', 'commands', 'active'),
			},
		},
	],
};

export default config;

function prioritizeKeys(...keys: ReadonlyArray<string>) {
	const order: Record<string, null> = {};

	for (const key of keys) {
		order[key] = null;
	}

	return JSON.stringify({
		...order,
		[/.*/ as any]: 'lexical',
	});
}
