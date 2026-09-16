# Changelog

## 0.3.0 — 2026-09-16

- Combat uses stock CLEO `0AE1` actor scan (no CLEO+ `0AB3`)
- `0555` now passes a weapon id so Loadout compiles on stock Sanny
- Dash / slide / boost use Y-forward `0407` offsets
- Compass pip tracks `0172` heading
- Skip exo / HUD / combat while the player is not controllable
- Kill debounce so one corpse does not spam medals
- **F4** toggles the whole pack. **F6 is free** for the companion switcher
- Double-tap **S** backdash
- Slide only while holding **W**
- Same loadout key twice no longer strips ammo
- HUD turns text-draw off in cars / when the pack is off
- `COMPILE.bat` finds the game + Sanny and drops `.cs` in `CLEO\`

## 0.2.0 — 2026-09-15

- Public GitHub repo: `whirledclassic/sa-aw-fps`
- SVG crosshairs + Python PNG generator (`tools/generate_crosshairs.py`)
- Loadout / exo-class script (`cleo/AW_FPS_Loadout.txt`)
- Hardened Core script: `0407` actor offsets instead of the shaky `02F6` name
- Combat script: closer ped scan notes, kill-feed timers
- LICENSE (MIT for original work), CONTRIBUTING, ROADMAP, .gitignore
- plugin-sdk ASI skeleton kept as reference only

## 0.1.0 — 2026-09-15

- First local pack: Core / Combat / HUD CLEO sources
- INI, install docs, original raster crosshairs
