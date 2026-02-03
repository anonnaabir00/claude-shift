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
