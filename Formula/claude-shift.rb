class ClaudeShift < Formula
  desc "Interactive profile switcher for Claude Code"
  homepage "https://github.com/anonnaabir00/claude-shift"
  url "https://raw.githubusercontent.com/anonnaabir00/claude-shift/main/claude-shift"
  version "0.1.0"
  sha256 :no_check
  license "MIT"

  def install
    bin.install "claude-shift"
  end

end
