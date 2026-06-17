class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.3.6.tar.gz"
  sha256 "07aea455b80bf92ee8d27a17b074a0d3955e81933c109d4ef3646186c43e9f61"
  license "MIT"

  def install
    bin.install "claude-shift"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
