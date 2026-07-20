# Reference builds

Internal POC demos for the Interactive Digital catalog. **Not sold cold. Not public marketing.**

| File | Template | Stack |
|------|----------|-------|
| [flow-field-grid-poc.html](./flow-field-grid-poc.html) | [flow-field-grid](../catalog/flow-field-grid.md) | Three.js r128 · local `js/` |

**Internal link (GitHub Pages):**  
https://museum-planning-llc.github.io/interactive-digital/reference/flow-field-grid-poc.html

Setup (if 404): [docs/github-pages-setup.md](../docs/github-pages-setup.md) — org Actions are read-only; publish with `_scripts/publish-gh-pages.sh` from your Mac.

Local fallback: `python3 -m http.server` from repo root → `/reference/flow-field-grid-poc.html`

## Layer status (flow field POC)

| Layer | Status |
|-------|--------|
| Core | Three.js port of 2024 p5 WEBGL sim |
| Participation | Sliders (lab) — presets TBD |
| Navigation | Orbit only — attract / reset TBD |
| Presentation | Minimal dark UI panel |
| Install shell | Not started |

Prioritized next steps: [../docs/flow-field-grid-next-steps.md](../docs/flow-field-grid-next-steps.md)
