# GitHub Pages — internal reference

Static POCs only. Not public marketing (`noindex` on index).

## Target URL

https://museum-planning-llc.github.io/interactive-digital/reference/flow-field-grid-poc.html

## One-time repo settings

1. **Settings → Pages**
   - **Build and deployment → Source:** Deploy from a branch
   - **Branch:** `main` · folder **`/ (root)`**
   - Do **not** use GitHub Actions as the Pages source (no custom deploy workflow in this repo).

2. **Settings → Actions → General → Workflow permissions**
   - Select **Read and write permissions**
   - Save (required for the built-in `pages-build-deployment` job).

3. **Actions** tab → open the latest failed **pages build and deployment** run → **Re-run all jobs**.

Deploy usually completes in 2–4 minutes.

## If deploy still fails

| Symptom | Fix |
|---------|-----|
| `Startup failure` on a custom Pages workflow | Remove `.github/workflows/*pages*` — use branch deploy only |
| `pages-build-deployment` fails after ~3 min | Confirm step 2 (read/write permissions); re-run job |
| 404 after green deploy | Hard-refresh; wait ~1 min for CDN; confirm branch is `main` and folder is root |
| Org policy error | Org **Settings → Actions** — allow workflows for this repo |

## Local fallback

```bash
cd ~/Documents/GitHub/interactive-digital
python3 -m http.server 8080
# http://localhost:8080/reference/flow-field-grid-poc.html
```

`.nojekyll` at repo root disables Jekyll so `reference/js/` is served as static files.
