# GitHub Pages — internal reference

Static POCs only. Not public marketing (`noindex` on index).

## Target URL

https://museum-planning-llc.github.io/interactive-digital/reference/flow-field-grid-poc.html

---

## If “Read and write permissions” is grayed out

**Museum-Planning-LLC org policy** locks Actions to **read-only**. Repo workflows cannot push branches or deploy Pages. This is normal — fix with a **local publish** (below), not Actions settings.

Org owners can optionally change: **Organization Settings → Actions → General → Workflow permissions** → allow read/write or let repos override.

---

## Publish from your Mac (recommended)

No Actions token needed — uses your normal `git push` access.

```bash
cd ~/Documents/GitHub/interactive-digital
chmod +x _scripts/publish-gh-pages.sh
./_scripts/publish-gh-pages.sh
```

Then in GitHub:

**Settings → Pages**

| Setting | Value |
|---------|--------|
| Source | Deploy from a branch |
| Branch | **`gh-pages`** |
| Folder | **`/ (root)`** |

Do **not** deploy from **`main`** (that triggers the failing `pages-build-deployment` job).

Wait ~1–2 minutes, then open the target URL above.

Re-run the script whenever `reference/` changes.

---

## Local preview (no Pages)

```bash
cd ~/Documents/GitHub/interactive-digital
python3 -m http.server 8080
# http://localhost:8080/reference/flow-field-grid-poc.html
```

---

## Troubleshooting

| Symptom | Fix |
|---------|-----|
| Read/write grayed out in repo Settings | Org lock — use **`_scripts/publish-gh-pages.sh`** |
| `pages-build-deployment` fails on `main` | Switch Pages source to **`gh-pages`**, not `main` |
| Publish workflow fails in Actions | Expected under read-only org — ignore; use local script |
| 404 after push | Confirm Pages branch is **`gh-pages`**; hard refresh |
