class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "943338d378a877a36443293ab2600b0895315764faf09fa3e1b880b30f7412c8"
  license "MIT"

  def install
    bin.install "claude-shift"
    bin.install_symlink "claude-shift" => "cs"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
