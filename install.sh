#!/usr/bin/env bash
set -euo pipefail

REPO="anonnaabir00/claude-shift"
BIN="claude-shift"
TARGET_DIR="${INSTALL_DIR:-$HOME/.local/bin}"

mkdir -p "$TARGET_DIR"
curl -fsSL "https://raw.githubusercontent.com/$REPO/main/$BIN" -o "$TARGET_DIR/$BIN"
chmod +x "$TARGET_DIR/$BIN"
ln -sf "$TARGET_DIR/$BIN" "$TARGET_DIR/cs"

echo "Installed to $TARGET_DIR/$BIN (also available as 'cs')"

if ! echo ":$PATH:" | grep -q ":$TARGET_DIR:"; then
  echo ""
  echo "Add to your shell profile (~/.zshrc or ~/.bashrc):"
  echo "  export PATH=\"$TARGET_DIR:\$PATH\""
fi

echo ""
echo "Usage:"
echo "  claude-shift add       # Add a provider profile"
echo "  claude-shift switch    # Switch profiles"
echo "  claude-shift --help    # Full help"
