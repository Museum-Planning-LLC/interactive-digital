# Flow field grid — prioritized next steps

**Interactive Digital · science template · internal POC**

Current demo: [reference/flow-field-grid-poc.html](../reference/flow-field-grid-poc.html)

---

## P0 — Repository truth (done / maintain)

1. **Three.js port + self-contained HTML** — `reference/flow-field-grid-poc.html` + vendored `reference/js/`
2. **Catalog layer table** — keep [flow-field-grid.md](../catalog/flow-field-grid.md) honest vs. demo

---

## P1 — Participation layer (weeks 4–6)

3. **Preset buttons** — replace raw sliders for floor-adjacent demo: *Calm · Swirl · Flood · Reverse*
4. **Reset** — return all particles to `base` positions and zero velocity
5. **Hide orbit from default** — OrbitControls staff-only (keyboard toggle) or remove for kiosk path

---

## P2 — Navigation layer

6. **Attract screen** — idle title + “Touch to explore” · auto-return after N seconds
7. **Fullscreen / kiosk chrome** — one button; `requestFullscreen` wrapper
8. **Idle timeout** — reset sim + return to attract (museum floor requirement)

---

## P3 — Presentation layer

9. **Wall aspect** — responsive layout for 16:9 and portrait kiosk; not fixed square sim box
10. **Typography + palette lock** — science-template design tokens shared across future templates
11. **Optional ambient audio** — turbulence-linked noise floor (off by default)

---

## P4 — Performance + install shell

12. **Neighbor lookup optimization** — index grid cells instead of O(n²) all-pairs (before scaling grid)
13. **Offline manifest** — confirm no network deps; document in install spec
14. **Health ping stub** — optional local heartbeat for future monitoring doc (not a product dashboard)

---

## P5 — Only when a menu item funds work

15. **Institution phenomenon copy** — minimal labels, not interpretive monologue
16. **Install spec PDF** — projection map, PC spec, touch overlay
17. **Form factor decision** — full-wall vs kiosk from study zone read

---

*Do not publish to museumplanning.com or client decks during 90-day flush.*
