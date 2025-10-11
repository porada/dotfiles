export default {
	'*': 'pnpm format',
	'**/!(aliases|config).fish': 'pnpm format:fish',
	'*.fish': () => 'pnpm lint:fish',
	'*.sh': 'pnpm lint:sh',
	'.husky/*': 'pnpm lint:sh',
	'bin/*': ['chmod +x', 'pnpm lint:sh'],
};
