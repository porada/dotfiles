function chmod() {
	return (files) =>
		files
			.filter((file) => file !== 'bin/dotlib')
			.map((file) => `chmod +x "${file}"`);
}

export default {
	'*': 'pnpm format',
	'*.fish': 'pnpm lint:fish',
	'*.sh': 'pnpm lint:sh',
	'bin/!(diff)': [chmod(), 'pnpm lint:sh'],
};
