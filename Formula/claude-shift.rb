class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/heads/main.tar.gz"
  version "0.2.0"
  sha256 :no_check
  license "MIT"

  def install
    bin.install "claude-shift"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
