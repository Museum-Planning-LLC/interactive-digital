#!/usr/bin/env bash
# Publish reference/ to gh-pages for GitHub Pages (no Actions write token needed).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if ! git remote get-url origin >/dev/null 2>&1; then
  echo "No origin remote." >&2
  exit 1
fi

BUILD="$(mktemp -d)"
trap 'rm -rf "$BUILD"' EXIT

mkdir -p "$BUILD"
cp index.html "$BUILD/"
cp .nojekyll "$BUILD/"
cp -R reference "$BUILD/"

echo "Built static site in temp dir ($(du -sh "$BUILD" | cut -f1))"

# Orphan gh-pages branch in a detached worktree, force-push site root.
WORKTREE="$(mktemp -d)"
trap 'rm -rf "$BUILD" "$WORKTREE"' EXIT

git fetch origin gh-pages 2>/dev/null || true

git worktree add --force -B gh-pages "$WORKTREE" gh-pages 2>/dev/null \
  || git worktree add --force -B gh-pages "$WORKTREE" main

rm -rf "$WORKTREE"/*
cp -R "$BUILD"/. "$WORKTREE"/

cd "$WORKTREE"
git add -A
git commit -m "Publish internal reference $(date -u +%Y-%m-%dT%H:%MZ)" || true
git push origin gh-pages

git worktree remove "$WORKTREE" --force 2>/dev/null || true

echo ""
echo "Pushed gh-pages. In GitHub: Settings → Pages → branch gh-pages / (root)"
echo "https://museum-planning-llc.github.io/interactive-digital/reference/flow-field-grid-poc.html"
