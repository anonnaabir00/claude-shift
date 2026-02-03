# claude-shift

Interactive profile switcher for Claude Code (Claude CLI).

## Install

### Homebrew (no extra tap repo)
```bash
brew install anonnaabir00/claude-shift/claude-shift
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
This repo includes a Homebrew formula at `Formula/claude-shift.rb` that installs directly from the raw script URL using `sha256 :no_check`. This avoids creating a separate `homebrew-claude-shift` tap repo.

## Claude CLI detection
On launch, `claude-shift` checks for the `claude` CLI in your `PATH` once per run and prints guidance if it is missing.
