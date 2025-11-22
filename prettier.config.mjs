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
	],
};
