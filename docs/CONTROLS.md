# Controls (Advanced Warfare mapping on SA)

Default PC. Rebind in `config/aw_fps.ini` and in GInput.

| Action | Key | Notes |
|---|---|---|
| Look | Mouse | From FP camera plugin |
| Move | WASD | Vanilla |
| Sprint | L-Shift | Vanilla sprint + exo drain if BoostSprint=1 |
| Jump / Exo boost | Space | First tap = jump. Second tap in air = boost (2 charges) |
| Exo dash | Double-tap W / A / D | Short burst, 1.4s cooldown |
| Slide | C while sprinting | 0.7s slide, then crouch |
| ADS | RMB | Tight crosshair, slower look (if FP plugin allows) |
| Fire | LMB | Vanilla + combat script recoil punch |
| Reload | R | Vanilla |
| Weapon switch | 1–9 / mousewheel | Vanilla or GTA V HUD |
| Lethal | G | Vanilla grenade / molotov slot |
| Tactical | Q | Flash / smoke if you added those weapons |
| Toggle pack | F6 | Enable / disable exo + HUD overlay |
| Status cheat | type AWFPS | Prints charges + score |
| Assault class | 8 | M4 + Deagle |
| Heavy class | 9 | Shotgun + RPG |
| Specialist class | 0 | Sniper + MP5 |

## Exo economy

- Boost charges: **2**
- Recharge: **2.8 seconds** each while on foot and not boosting
- Dash shares the same stamina bar as sprint if `SharedStamina=1`

## Why it will never feel 1:1 with AW

SA peds have one collision capsule, no proper mantle, no wall-run spline, no hover-jet IK. Boost is a velocity impulse. Slide is crouch + forward speed. That is the honest ceiling of CLEO on RenderWare.
