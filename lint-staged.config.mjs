export default {
	'*': 'npm run format --',
	'**/!(aliases|config).fish': 'npm run format:fish --',
	'*.fish': () => 'npm run lint:fish',
	'*.sh': 'npm run lint:sh --',
	'.husky/*': 'npm run lint:sh --',
	'bin/*': ['chmod +x', 'npm run lint:sh --'],
};
