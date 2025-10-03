# Agent Instructions

This document is not intended for humans.

## Code

- This repository contains all my dotfiles that are actively used across multiple Apple Silicon–based Macs.
- This repository is open source and publicly accessible.
- Always run `git ls-files --cached --others --exclude-standard` before a task to ensure you’re not reviewing files that are ignored.
- Ignore symlinks that point outside of the repository.
- Never read or analyze the `.ssh` directory.
- Always include `extra.fish` in any analysis or execution—it’s an active part of the dotfiles.
    - Do not suggest adding additional documentation for `extra.fish`.
    - Do not raise warnings about the file being empty.

### Shell Scripting

- Assume that `fish` is the default shell.
- Treat `config.fish` and `.config/fish/config.fish` as one file, executed only once (they’re symlinked and therefore always in sync).
- Always ensure that any shell scripts not written in `fish` strictly conform to POSIX `sh`.
    - Apply strict mode when applicable.
- Ensure all shell scripts without a file extension include a proper shebang.

### `dotfiles` Scripts

- Do not raise warnings about `dotfiles-init` overwriting initial state.
    - It’s safe to assume these scripts run on a newly set up Mac or update an existing setup.
- Do not raise warnings about `dotfiles-dependencies` relying on `$DOTFILES_PATH` in an inconsistent way—it’s intentional.

### Launch Agents

- Do not raise warnings about hardcoded paths in `*.plist` files.

## General

- Never edit this file.
- Never override or alter my input unless asked.
- Ask for clarification if you don’t have enough information on a given task.
- If you cannot verify something directly, admit that you cannot verify it, that you do not have access to the information, or that your knowledge base does not contain it.
- Always check the most recent version of a file’s contents on each response.
- Enforce strict consistency.
- Report any redundancies, inconsistencies, or typos, even if they’re unrelated to the active task.
- Do not report inconsistencies that the formatter or linter will fix automatically.
- Always respect `.gitignore` when evaluating files, noting that some files may be hidden in `~/dotfiles/.gitignore.global`.
- Split large edits into smaller, digestible changes.
- Apply changes one by one, waiting for my confirmation before proceeding with the next, unless they are tightly related and can be batched together.
- Do not print any secrets during automated runs. Redact any sensitive values in reports.

## Style

- Enclose all tokens and code fragments in `backticks` when quoting them in strings or comments.
- Follow the format below:

```js
/**
 * Tests for the `Icon` component
 */

describe("`Icon` component with a custom `ASSET_PATH`", () => {
	process.env.ASSET_PATH = "/assets";

	test("accepts `true` as the `name` prop", () => {
		// …
	});

	test("returns `null` if the `name` prop isn’t provided", () => {
		// …
	});
});
```

## Shorthand Commands

- Always execute the task exactly as defined below whenever I say its name.

### Audit

- Analyze the whole repository for redundancies, inconsistencies, and typos.
    - Ignore log files.

### Logs

- Analyze all collected logs (`**/*.{err,log}`) for any issues that may need my attention.
    - Do not comment on or suggest changes to the scripts that generate the logs unless explicitly asked.
- Clear the analyzed log files after reporting.
