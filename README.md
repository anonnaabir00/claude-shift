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
Add a formula in your tap at `Formula/claude-shift.rb`:

```ruby
class ClaudeShift < Formula
  desc "Interactive profile switcher for Claude Code (Claude CLI)"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_TARBALL_SHA256"
  license "MIT"

  def install
    bin.install "claude-shift"
  end

  test do
    system "#{bin}/claude-shift", "-h"
  end
end
```

Update the `url`/`sha256` when you tag a release. For personal use, a tap with this formula enables `brew install claude-shift`.
