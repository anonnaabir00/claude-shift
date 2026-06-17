class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ab9209d993b72ef5805ba6cd0b85569099d11a83d11e5bdb9fa1edbd49481358"
  license "MIT"

  def install
    bin.install "claude-shift"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
