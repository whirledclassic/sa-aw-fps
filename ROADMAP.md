# Roadmap

## Now (0.3)

- [x] CLEO exo / dash / slide source
- [x] CLEO combat feedback source
- [x] Box HUD + original sights
- [x] Public repo
- [x] Stock CLEO 4.4 opcode set (0AE1 scan, 0555 + weapon id)
- [x] Correct 0407 dash axes
- [ ] Confirm Sanny 4 + CLEO 4.4.3 compile screenshot (issue #1)
- [ ] Magic.TXD pack script for `aw_hud.txd`
- [ ] Optional WAV hooks for hitmarker (user-supplied CC0 click)
- [ ] INI read from disk via CLEO+ instead of hardcoded numbers

## Later (0.4 — ASI)

- [ ] plugin-sdk project file
- [ ] `m_vecMoveSpeed` dash / boost (replace teleport)
- [ ] ADS FOV lerp on `TheCamera`
- [ ] Recoil punch on `CWeapon::FireInstantHit`
- [ ] Shared F6 toggle across Core / HUD / Combat / Loadout

## Not in scope

- Porting the IW renderer
- Official Atlas / KVA assets
- Multiplayer netcode (that is SA-MP / open.mp, a different repo)
