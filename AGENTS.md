# Agent Instructions

This document is not intended for humans.

## Code

- This repository contains all my dotfiles that are actively used across multiple Apple Silicon–based Macs.
- This repository is open source and publicly accessible.
- Always run `git ls-files --cached --others --exclude-standard` before a task to ensure you’re not reviewing files that are ignored.
    - Take note of which of the listed entries are regular files and which are symlinks.
    - Ignore symlinks that point outside of the repository.
- Never read or analyze the `.ssh` directory.
- Always include `extra.fish` in any analysis or execution—it’s an active part of the dotfiles.
    - Do not report `.gitignore` including `extra.fish`.
    - Do not report the file being empty.
    - Do not suggest adding additional documentation for `extra.fish`.
    - Do not mention the file unless there are specific issues to report.
- Always use `git mv` when renaming or moving files.
- Enforce strict consistency across all modules, configuration files, and naming conventions.
- Do not report inconsistencies automatically handled by the formatter or linter.
- Split large edits into smaller, digestible changes.
- Apply changes one by one, waiting for my confirmation before proceeding with the next, unless tightly related and suitable for batching.

### Shell Scripting

- Always assume that `fish` is the default shell.
    - Run all shell terminal commands using `fish` syntax.
- Always ensure that any shell scripts not written in `fish` strictly conform to POSIX `sh`.
    - Apply strict mode when applicable.
- Ensure all shell scripts without a file extension include a proper shebang.
- Always prefer `echo` over `printf` for plain text output.

### `dotfiles` Scripts

- Do not report `dotfiles-init` overwriting initial state.
    - It’s safe to assume these scripts run on a newly set up Mac or update an existing setup.

### Launch Agents

- Do not report hardcoded paths in `*.plist` files.

## General

- Always re-read `AGENTS.md` before reading every message from me to ensure you’re following the latest version of the instructions.
- Always stay alert to any issues outlined in this document, even when performing unrelated tasks.
    - Report all discovered issues, but do not fix them without my confirmation.
- Never edit this file.
- Never override or alter my input unless explicitly asked.
- Ask for clarification if you don’t have enough information on a given task.
- If you cannot verify something directly, admit that you cannot verify it, that you do not have access to the information, or that your knowledge base does not contain it.
- Always check the most recent version of a file’s contents on each response.
    - Ignore `.DS_Store` files and do not report on them.
- Notify me if any development tools used in the project allow opting out of telemetry.
    - Do not mention tools where telemetry has already been disabled.

## Style

- Enclose all tokens and code fragments in `backticks` when quoting them in strings or comments.
- Follow the format below:

```js
/**
 * Tests for the `Icon` component
 */

describe('`Icon` component with a custom `ASSET_PATH`', () => {
	process.env.ASSET_PATH = '/assets';

	test('accepts `true` as the `name` prop', () => {
		// …
	});

	test('returns `undefined` if the `name` prop isn’t provided', () => {
		// …
	});
});
```

## Shorthand Commands

- Shorthand commands are high-level task macros that define complete, self-contained procedures.
- Always execute the task exactly as defined below whenever I say its name.

### Audit

- Review the entire repository for redundancies, inconsistencies, typos, and potential structural issues.
    - Perform the review without making edits.
- Analyze unpushed commit messages for typos.
    - Ignore `💥` commits.
    - Do not analyze diffs.
- Ensure there is no dead or unused code.
- Run all instructions from the `Logs` section as part of the audit process.
- Report only issues that may require fixing.

### Logs

- Review all collected logs (`**/*.{err,log}`) for any issues that may require attention.
    - Do not comment on or suggest changes to the scripts that generate logs unless explicitly asked.
- Clear analyzed log files after reporting.

### Verify

- Re-read all reported files to determine whether the reported issues are still relevant.
    - Ensure all findings align with the latest version of this document.
- Mark resolved issues as addressed and exclude them from future reports.
- Highlight any issues that still persist after the latest edits.
