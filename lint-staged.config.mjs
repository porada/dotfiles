function chmod() {
	return (files) =>
		files
			.filter((file) => file !== 'bin/dotlib')
			.map((file) => `chmod +x "${file}"`);
}

export default {
	'*': 'pnpm format',
	'*.fish': 'pnpm lint:fish',
	'*.plist': 'pnpm lint:plist',
	'*.sh': 'pnpm lint:sh',
	'bin/*': [chmod(), 'pnpm lint:sh'],
};
