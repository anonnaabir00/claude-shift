class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.3.8.tar.gz"
  sha256 "4f9ca8e09d6e001e241ba25fdd9732a0f20ac437267637dfcbc611c0576ea272"
  license "MIT"

  def install
    bin.install "claude-shift"
    bin.install_symlink "claude-shift" => "cs"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
