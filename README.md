# SA · AW FPS

Advanced Warfare-style **first-person combat layer** for *Grand Theft Auto: San Andreas*.

**Repo:** https://github.com/whirledclassic/sa-aw-fps

This is not the IW engine inside San Andreas. SA stays RenderWare. The pack adds exo movement, CoD-like HUD/crosshairs, hitmarkers, streaks, and three loadout classes on top of a first-person camera plugin you install separately.

```
GTA SA 1.0 + SilentPatch + CLEO + ONE first-person camera plugin
        +
this repo's compiled .cs scripts
        =
FPS feel in Los Santos
```

## Status

**v0.2.0 — source pack.** Scripts are Sanny Builder sources (`.txt`). You compile them. No ripped Call of Duty or Rockstar files live here.

| Script | What it does |
|---|---|
| `cleo/AW_FPS_Core.txt` | Exo boost, dash, slide, F6 toggle, cheat `AWFPS` |
| `cleo/AW_FPS_Combat.txt` | Hitmarker, medals, streak rewards |
| `cleo/AW_FPS_HUD.txt` | Green sight, ADS dot, exo pips |
| `cleo/AW_FPS_Loadout.txt` | Keys **8 / 9 / 0** = Assault / Heavy / Specialist |

## Requirements

You must own GTA San Andreas PC. Use **1.0 Hoodlum / downgraded 1.0**.

1. [SilentPatch SA](https://cookieplmonster.github.io/mods/gta-sa/) + ASI Loader
2. [CLEO 4.4+](https://github.com/cleolibrary/CLEO4/releases) (CLEO 5 is fine)
3. CLEO+ (MixMods)
4. ModLoader
5. [GInputSA](https://cookieplmonster.github.io/mods/gta-sa/#ginput)
6. **One** first-person camera: BoPoh First Person 3.0, Ultimate First Person, or Zolika ZMenu FP
7. [Sanny Builder](https://sannybuilder.com/) to compile these sources

FOV **100–110** feels closest to AW.

## Install

1. Clone this repo.
2. Open each `cleo/*.txt` in Sanny Builder — mode GTA SA.
3. Compile to `<GTA SA>\cleo\AW_FPS_Core.cs` (and Combat, HUD, Loadout).
4. Copy `config/aw_fps.ini` to `<GTA SA>\modloader\SA_AW_FPS\config\`.
5. Launch, enable first-person, press F6 if the pack was toggled off.

Opcode mismatch? Read `docs/COMPILE_FIXES.md`.
Full stack: `INSTALL.md`.

## Controls

| Action | Input |
|---|---|
| Look / fire | Mouse — from the FP plugin |
| Exo boost | Space again while airborne (2 charges) |
| Dash | Double-tap W, A, or D |
| Slide | C on the ground |
| ADS sight | RMB |
| Assault / Heavy / Specialist | 8 / 9 / 0 |
| Toggle pack | F6 |
| Status | type `AWFPS` |

## Legal

Original scripts, docs, and HUD art in this repo are MIT.

Do **not** open a PR that adds models, animations, audio, or textures extracted from *Call of Duty: Advanced Warfare*, or Rockstar `.img` / `.ifp` files.

Fan-made weapon replacements belong on their authors' pages. Link them. Do not vendor them here.

## Related

Windows-7-era SA tools: [gta-sa-win7-mods](https://github.com/whirledclassic/gta-sa-win7-mods). This repo is the FPS layer only.
