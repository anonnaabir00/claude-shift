class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.3.9.tar.gz"
  sha256 "213b73b6ee43db5b56929bb349bf603a5916b933234fcb789076001b91c9d3b9"
  license "MIT"

  def install
    bin.install "claude-shift"
    bin.install_symlink "claude-shift" => "cs"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
