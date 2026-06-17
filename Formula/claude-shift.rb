class ClaudeShift < Formula
  desc "Profile switcher for Claude Code - manage multiple API providers"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://github.com/anonnaabir00/claude-shift/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "e3006ac83c723149c2c2248598ddcf7e93e9f214e6aadfae51d968fafcd645f5"
  license "MIT"

  def install
    bin.install "claude-shift"
  end

  test do
    assert_match "claude-shift", shell_output("#{bin}/claude-shift version")
  end
end
