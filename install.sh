#!/usr/bin/env bash
set -euo pipefail

REPO="anonnaabir00/claude-shift"
BIN="claude-shift"
TARGET_DIR="${INSTALL_DIR:-$HOME/.local/bin}"

mkdir -p "$TARGET_DIR"
curl -fsSL "https://raw.githubusercontent.com/$REPO/main/$BIN" -o "$TARGET_DIR/$BIN"
chmod +x "$TARGET_DIR/$BIN"

echo "✅ Installed to $TARGET_DIR/$BIN"

if ! echo ":$PATH:" | grep -q ":$TARGET_DIR:"; then
  echo "⚠️  Add this to ~/.zshrc or ~/.bashrc:"
  echo "export PATH=\"$TARGET_DIR:\$PATH\""
fi
