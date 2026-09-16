# SA · AW FPS

Advanced Warfare-style **first-person combat layer** for *Grand Theft Auto: San Andreas*.

**Repo:** https://github.com/whirledclassic/sa-aw-fps

SA stays RenderWare. This pack adds exo movement, a box HUD, hitmarkers, streaks, and three loadout classes on top of a first-person camera plugin you install separately.

```
GTA SA 1.0 + SilentPatch + CLEO + ONE first-person camera plugin
        +
this repo's compiled .cs scripts
        =
FPS feel in Los Santos
```

## Status

**v0.3.0 — source pack.** Scripts are Sanny Builder sources (`.txt`). You compile them. No ripped Call of Duty or Rockstar files live here.

| Script | What it does |
|---|---|
| `cleo/AW_FPS_Core.txt` | Exo boost, dash (WASD), slide, **F4** toggle, cheat `AWFPS` |
| `cleo/AW_FPS_Combat.txt` | Hitmarker, medals, streak rewards |
| `cleo/AW_FPS_HUD.txt` | Green sight, ADS dot, heading pip |
| `cleo/AW_FPS_Loadout.txt` | Keys **8 / 9 / 0** = Assault / Heavy / Specialist |

## Requirements

You must own GTA San Andreas PC. Use **1.0 Hoodlum / downgraded 1.0**.

1. [SilentPatch SA](https://cookieplmonster.github.io/mods/gta-sa/) + ASI Loader
2. [CLEO 4.4+](https://github.com/cleolibrary/CLEO4/releases)
3. ModLoader
4. [GInputSA](https://cookieplmonster.github.io/mods/gta-sa/#ginput)
5. **One** first-person camera: BoPoh First Person 3.0, Ultimate First Person, or Zolika ZMenu FP
6. [Sanny Builder](https://sannybuilder.com/) — or run `COMPILE.bat`

FOV **100–110** feels closest to AW.

## Install

Easiest: run **`COMPILE.bat`**. It finds `gta_sa.exe` + Sanny, compiles the four scripts into `CLEO\`, copies `config/aw_fps.ini`.

Manual:

1. Clone this repo.
2. Open each `cleo/*.txt` in Sanny Builder — mode GTA SA.
3. Compile to `<GTA SA>\cleo\AW_FPS_Core.cs` (and Combat, HUD, Loadout).
4. Launch, enable first-person, type `AWFPS`, press **F4** if you want the pack off.

**F6 is left alone** so it can stay the companion-switcher key in [gta-sa-win7-mods](https://github.com/whirledclassic/gta-sa-win7-mods).

Opcode mismatch? Read `docs/COMPILE_FIXES.md`.
Full stack: `INSTALL.md`.

## Controls

| Action | Input |
|---|---|
| Look / fire | Mouse — from the FP plugin |
| Exo boost | Space again while airborne (2 charges) |
| Dash | Double-tap W, A, D, or S |
| Slide | C while holding W |
| ADS sight | RMB |
| Assault / Heavy / Specialist | 8 / 9 / 0 |
| Toggle pack | **F4** |
| Status | type `AWFPS` |

## Legal

Original scripts, docs, and HUD art in this repo are MIT.

Do **not** open a PR that adds models, animations, audio, or textures extracted from *Call of Duty: Advanced Warfare*, or Rockstar `.img` / `.ifp` files.
