export default {
	plugins: ['prettier-plugin-sh'],
	singleQuote: true,
	overrides: [
		{
			files: '*.mjs',
			options: {
				bracketSpacing: true,
				quoteProps: 'consistent',
				trailingComma: 'es5',
			},
		},
		{
			files: '*.plist',
			options: {
				parser: 'html',
				printWidth: 999,
			},
		},
	],
};
