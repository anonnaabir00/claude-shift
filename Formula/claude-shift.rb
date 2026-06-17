class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "3f0b9b68729f260e2192be751bd323caffb4b1fbac837532c094c4ee9dc28a59"
  license "MIT"

  def install
    bin.install "claude-shift"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
