# claude-shift

Profile switcher for Claude Code. Manage multiple API providers and keys from one CLI.

## Install

### Homebrew
```bash
brew tap anonnaabir00/claude-shift https://github.com/anonnaabir00/claude-shift
brew install anonnaabir00/claude-shift/claude-shift
```

### Curl
```bash
curl -fsSL https://raw.githubusercontent.com/anonnaabir00/claude-shift/main/install.sh | bash
```

## Uninstall

### If installed via Homebrew
```bash
brew uninstall claude-shift
brew untap anonnaabir00/claude-shift
```

### If installed via curl script
```bash
rm ~/.local/bin/claude-shift
```

### Clean up config (optional)
```bash
rm -rf ~/.config/claude-shift
```

## Usage

```bash
claude-shift add                  # Interactive provider setup (TUI)
claude-shift switch work          # Direct switch to 'work' profile
claude-shift switch               # Interactive profile picker
claude-shift list                 # Show all profiles
claude-shift current              # Show active profile
claude-shift edit [name]          # Edit a profile
claude-shift remove [name]        # Remove a profile
claude-shift env [name]           # Print export statements for eval
claude-shift run [name]           # Launch claude with profile env vars
eval "$(claude-shift env work)"   # Export profile vars to current shell
```

## Supported Providers

- Anthropic (direct API)
- OpenRouter
- Z.AI
- DeepSeek
- Amazon Bedrock
- Google Vertex AI
- Ollama (local)
- LM Studio (local)
- NVIDIA NIM
- Cloudflare AI Gateway
- Custom (any Anthropic-compatible proxy)

## How it works

Profiles stored as `.env` files in `~/.config/claude-shift/profiles/`. On switch, writes `~/.claude/settings.local.json` with the selected provider's env vars and model override.

Auto-enables caveman ultra mode when the caveman plugin is detected.

## Releasing a new version

```bash
# 1. Make changes, commit, push as usual
git add claude-shift
git commit -m "Add feature"
git push

# 2. Run release script (bumps version, tags, updates formula SHA)
./scripts/release.sh 0.3.0
```

Users upgrade with `brew upgrade claude-shift`.

## Short command

`cs` is a symlink to `claude-shift`:

```bash
cs switch work        # same as claude-shift switch work
cs run themespell     # same as claude-shift run themespell
cs list               # same as claude-shift list
```

## Shortcuts

| Command | Alias |
|---------|-------|
| `switch` | `sw`, `s` |
| `list` | `ls`, `l` |
| `current` | `c` |
| `add` | `a` |
| `edit` | `e` |
| `remove` | `rm` |
| `run` | `r` |
