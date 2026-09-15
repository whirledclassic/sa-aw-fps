# Engine notes — the ASI path

CLEO cannot change viewmodel FOV, play custom arm IFP, or hook `CWeapon::Fire` cleanly.

Use plugin-sdk: https://github.com/DK22Pac/plugin-sdk

Real dash writes `CPed::m_vecMoveSpeed` for 8–12 frames. `00A1 put_actor` teleports and can clip walls.

See `src/SA_AW_FPS.asi.cpp` for a starting `gameProcessEvent` loop.
