import type { Configuration } from 'lint-staged';

function chmod() {
	return (files: ReadonlyArray<string>) =>
		files
			.filter((file) => file !== 'bin/dotlib')
			.map((file) => `chmod +x '${file}'`);
}

const config: Configuration = {
	'*': 'pnpm format',
	'*.fish': 'pnpm lint:fish',
	'*.sh': 'pnpm lint:sh',
	'bin/!(diff)': [chmod(), 'pnpm lint:sh'],
};

export default config;
