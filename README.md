# claude-shift

Interactive profile switcher for Claude Code (Claude CLI).

## Install

### Homebrew (personal tap)
```bash
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
