# claude-shift

Interactive profile switcher for Claude Code (Claude CLI).

## Install

### Homebrew (use this repo directly)
```bash
brew tap anonnaabir00/claude-shift https://github.com/anonnaabir00/claude-shift
brew install claude-shift
```

### Curl installer
```bash
curl -fsSL https://raw.githubusercontent.com/anonnaabir00/claude-shift/main/install.sh | bash
```

Usage
```bash
claude-shift
```

Profiles live in:
```
~/.config/claude-switcher/profiles
```

Claude settings written to:
```
~/.claude/settings.local.json
```

## Homebrew formula (reference)
This repo includes a Homebrew formula at `Formula/claude-shift.rb`. If you tap this repo directly with the full URL, Homebrew will not look for a `homebrew-claude-shift` repo.

## Claude CLI detection
On launch, `claude-shift` checks for the `claude` CLI in your `PATH` once per run and prints guidance if it is missing.
