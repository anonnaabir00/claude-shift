# claude-shift

Interactive profile switcher for Claude Code (Claude CLI).

## Install

### Homebrew (personal tap)
```bash
brew tap-new anonnaabir00/claude-shift
git -C "$(brew --repo anonnaabir00/claude-shift)" remote add origin https://github.com/anonnaabir00/homebrew-claude-shift
git -C "$(brew --repo anonnaabir00/claude-shift)" push -u origin main

brew tap anonnaabir00/claude-shift
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
This repo includes a Homebrew formula at `Formula/claude-shift.rb`. Update the `url` and `sha256` when you tag a release, then use a personal tap so `brew install claude-shift` works.

## Claude CLI detection
On launch, `claude-shift` checks for the `claude` CLI in your `PATH` once per run and prints guidance if it is missing.
