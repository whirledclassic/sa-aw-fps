# Install

## 0. Required base game

- GTA San Andreas **PC 1.0 Hoodlum / downgraded 1.0 US**
- Steam 3.0 and the 2014/2025 re-releases break most ASI/CLEO camera mods. Downgrade first if needed.

## 1. Foundation stack (install in this order)

1. **SilentPatch SA** + **ASI Loader**  
   https://cookieplmonster.github.io/mods/gta-sa/
2. **ModLoader**  
   https://www.gtagarage.com/mods/show.php?id=25368
3. **CLEO 4.4.3 or CLEO 5**  
   https://github.com/cleolibrary/CLEO4/releases  
   or CLEO 5 from the CLEO library.
4. **CLEO+** (needed by several modern FP fixpacks)  
   MixMods / LibertyCity — search “CLEO+”.
5. **GInputSA** (proper mouse + gamepad)  
   https://cookieplmonster.github.io/mods/gta-sa/#ginput
6. **Fastman92 Limit Adjuster** if you add extra weapons/peds later.

## 2. First-person camera (pick ONE)

Do not run two FP camera mods at once.

| Plugin | Notes |
|---|---|
| First Person 3.0 (BoPoh), MixMods “fixed” build | Classic, V to cycle cameras |
| Ultimate First Person (plugin-sdk, Nexus / LibertyCity) | Newer, cutscene FP, recoil hooks |
| Zolika ZMenu → Custom Cameras → First Person | Trainer-based, easy FOV slider |

Recommended FOV for AW feel: **100–110**.

Companion that many people use with BoPoh 3.0:

- GTA V HUD by DK22Pac
- “FixPack for First Person Mod 3.0 + GTA V HUD” (CLEO+)

## 3. Install THIS pack

Copy the folder so it looks like this:

```
Grand Theft Auto San Andreas/
  cleo/
    AW_FPS_Core.cs          ← compile the .txt in /cleo with Sanny Builder
    AW_FPS_HUD.cs
    AW_FPS_Combat.cs
    AW_FPS_Loadout.cs
  modloader/
    SA_AW_FPS/
      config/aw_fps.ini
      assets/crosshairs/*
```

Until you compile the `.txt` sources with **Sanny Builder 3/4** (SA mode), the scripts will not run. Sanny Builder: https://sannybuilder.com/

Compile settings: **GTA SA**, CLEO, output `.cs` into your game `cleo\` folder.

## 4. Optional community addons (you download, we don’t ship)

Search these on GTAinside / LibertyCity / MixMods and respect each author’s terms:

- CoD-style weapon replacements (fan-made models only)
- Realistic weapon animations
- Ped / army skins
- Hitmarker WAV packs (royalty-free)
- SA-MP “COD Warground” is a **multiplayer gamemode**, not this single-player pack

## 5. Boot checklist

1. Launch the game once with only SilentPatch + CLEO. Confirm it starts.
2. Enable the FP camera. Walk around. Confirm mouse look.
3. Drop in the compiled `.cs` files.
4. In-game type `AWFPS` to print status (see Core script).
5. If the camera fights the exo dash, lower `DashForce` in `aw_fps.ini`.
