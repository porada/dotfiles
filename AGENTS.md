# Agent Instructions

This document is not intended for humans.

## Code

- This repository contains all my dotfiles that are actively used across multiple Apple Silicon–based Macs.
- This repository is open source and publicly accessible.
- Always run `git ls-files --cached --others --exclude-standard` before a task to ensure you’re not reviewing files that are ignored.
    - Take note of which entries are regular files and which are symlinks, but do not output this information.
    - Ignore symlinks that resolve outside of the repository.
- Never read or analyze the `~/.ssh` directory.
    - Never follow any symlinks that resolve to it or to any path within it.
- Always consider `./config/fish/extra.fish` an active part of the dotfiles if it exists.
    - Always include `extra.fish` in any analysis or execution.
    - Do not report `.gitignore` including `extra.fish`.
    - Do not report the file being empty.
    - Do not suggest adding additional documentation for `extra.fish`.
    - Do not mention the file unless there are specific issues to report.
- Always use `git mv` when renaming or moving files.
- Always run `prettier` and `shellcheck` through `pnpm exec`.
    - Exempt `package.json` scripts from this requirement.

### Shell Scripting

- Always assume that `fish` is the default shell.
    - Run all shell terminal commands using `fish` syntax when fish is available.
- Always ensure that any shell scripts not written in `fish` strictly conform to POSIX `sh`.
    - Apply strict mode when applicable.
- Ensure all shell scripts without a file extension include a proper shebang.
- Ensure all POSIX shell scripts source `dotlib`.
    - Always keep all functions defined in `dotlib` alphabetized in natural order.
    - Always report any functions defined in `dotlib` that are never used.
    - Always report any POSIX shell functions prefixed with `__` when they are defined outside of `dotlib`.
- Ensure all quoted strings use double quotes.
    - Allow single quotes when the string contains characters that would otherwise require escaping.
- Always set `IFS` locally when iterating over filenames or command output.
    - Limit `IFS` overrides to the sensitive `read` blocks only.
    - Prefer `while read` loops over for when splitting behavior depends on `IFS`.
- Avoid bare pipelines when feeding command output into a loop. Use command substitution for better detection of potential upstream failures.
    - Exempt intentional `printf` output piped into `while` from this requirement.
- Always prefer `echo` over `printf` for plain text output.
    - Ignore cases where `printf` is required for precise whitespace control.
- Avoid using `case` statements.
- Always prefer the variable name `param` over `arg`.
    - Exempt `fish`’s built-in `$argv` variable from this rule.
- Do not report use of `eval` unless it poses a security risk.
- Always report when `find` uses `-maxdepth` in any position other than immediately after the search path.
- Always report inline `shellcheck` comments that have no effect.

### `dotfiles` Scripts

- All `dotfiles` commands must work on a fresh macOS install (Sequoia or newer).
    - Always assume this repository is updated via `dotfiles upgrade`.
- Do not report `dotfiles-init-setup` overwriting initial state.
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
- Enforce strict consistency across all modules, configuration files, and naming conventions.
    - Always report any potential misspellings of `dom.engineering`.
- Do not report inconsistencies automatically handled by the formatter or linter.
- Split large edits into smaller, digestible changes.
- Apply changes one by one, waiting for my confirmation before proceeding with the next, unless tightly related and suitable for batching.
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

- Review the entire codebase for redundancies, inconsistencies, typos, and potential structural issues.
    - Ignore files that don’t belong to this repository (other than `extra.fish`).
    - Include the contents of this document in the analysis.
    - Include all code comments in the analysis.
    - Perform the review without making edits.
- Ensure there is no dead or unused code.
- Run all instructions from the `Logs` section as part of the audit process.
- Treat the audit as one continuous task.
    - Do not wait for my confirmation between steps.
    - Report all findings at the end.
    - Report only issues that may require fixing.

### Logs

- Review all collected logs (`**/*.{err,log}`) for any issues that may require attention.
    - Do not comment on or suggest changes to the scripts that generate logs unless explicitly asked.
- Clear analyzed log files after reporting.
    - Remove the legacy `co.porada.*.{err,log}` files.

### Review

- Review the commit matching the provided hash.
    - If no hash is given, review the most recent commit on the current branch.
    - Perform the review without making edits.
- Report any regressions the changes may introduce.
- Ensure all changes comply with the latest version of `AGENTS.md`.

### Verify

- Re-read this document and all reported files to confirm whether reported issues remain relevant.
    - Ensure that all findings align with the latest version of this document.
- Mark resolved issues as addressed and exclude them from future reports.
- Highlight any issues that persist after the latest edits.
