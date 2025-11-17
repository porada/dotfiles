export default {
	'*': 'pnpm format',
	'*.fish': ['pnpm format:fish', 'pnpm lint:fish'],
	'*.plist': 'pnpm lint:plist',
	'*.sh': 'pnpm lint:sh',
	'.husky/*': 'pnpm lint:sh',
	'bin/*': ['chmod +x', 'pnpm lint:sh'],
};
