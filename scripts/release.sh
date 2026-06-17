#!/usr/bin/env bash
set -euo pipefail

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[0;33m'; RESET='\033[0m'

FORMULA="Formula/claude-shift.rb"
MAIN_SCRIPT="claude-shift"
REPO="anonnaabir00/claude-shift"

usage() {
  echo "Usage: ./scripts/release.sh <version>"
  echo "  e.g. ./scripts/release.sh 0.3.0"
  exit 1
}

[[ $# -lt 1 ]] && usage
VERSION="$1"
TAG="v${VERSION}"

# Validate version format
if ! [[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo -e "${RED}Invalid version: $VERSION (expected X.Y.Z)${RESET}"
  exit 1
fi

# Check clean working tree
if [[ -n "$(git status --porcelain -- "$MAIN_SCRIPT" "$FORMULA")" ]]; then
  echo -e "${RED}Uncommitted changes in $MAIN_SCRIPT or $FORMULA. Commit first.${RESET}"
  exit 1
fi

# Check tag doesn't exist
if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo -e "${RED}Tag $TAG already exists.${RESET}"
  exit 1
fi

echo -e "${GREEN}Releasing $TAG${RESET}"

# Step 1: Bump version in main script
echo "  Bumping VERSION in $MAIN_SCRIPT..."
sed -i '' "s/^VERSION=\".*\"/VERSION=\"${VERSION}\"/" "$MAIN_SCRIPT"

# Step 2: Set formula URL to new tag, placeholder SHA
echo "  Updating formula URL..."
sed -i '' "s|archive/refs/tags/v[^\"]*|archive/refs/tags/${TAG}.tar.gz|" "$FORMULA"
sed -i '' "s/sha256 \".*\"/sha256 \"PLACEHOLDER\"/" "$FORMULA"

# Step 3: Commit + push
echo "  Committing..."
git add "$MAIN_SCRIPT" "$FORMULA"
git commit -m "Release ${TAG}"
git push

# Step 4: Create + push tag
echo "  Tagging ${TAG}..."
git tag "$TAG"
git push origin "$TAG"

# Step 5: Get SHA of tagged tarball
echo "  Fetching tarball SHA256..."
SHA=$(curl -fsSL "https://github.com/${REPO}/archive/refs/tags/${TAG}.tar.gz" | shasum -a 256 | awk '{print $1}')
echo "  SHA256: $SHA"

# Step 6: Update formula with real SHA
sed -i '' "s/sha256 \"PLACEHOLDER\"/sha256 \"${SHA}\"/" "$FORMULA"

# Step 7: Commit + push formula fix
git add "$FORMULA"
git commit -m "Update formula SHA256 for ${TAG}"
git push

echo ""
echo -e "${GREEN}Released ${TAG}${RESET}"
echo "  Users: brew upgrade claude-shift"
