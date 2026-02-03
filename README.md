# claude-shift

Interactive profile switcher for Claude Code (Claude CLI).

## Install

### Homebrew (no tap, direct formula URL)
```bash
brew install --formula https://raw.githubusercontent.com/anonnaabir00/claude-shift/main/Formula/claude-shift.rb
```
If you previously tapped the repo, run `brew untap anonnaabir00/claude-shift` before installing from the URL.

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
This repo includes a Homebrew formula at `Formula/claude-shift.rb` designed for direct URL installs to avoid Homebrew looking for a `homebrew-claude-shift` tap.

## Claude CLI detection
On launch, `claude-shift` checks for the `claude` CLI in your `PATH` once per run and prints guidance if it is missing.
