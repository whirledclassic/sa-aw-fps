# Contributing

PRs welcome on scripts, docs, and original art. PRs that add ripped Call of Duty or Rockstar files will be closed.

## Rules

1. You must own GTA San Andreas to test. Do not commit `gta_sa.exe` or `.img` files.
2. New CLEO must compile in Sanny Builder 3/4, GTA SA mode, CLEO 4+.
3. Prefer opcodes listed in `docs/COMPILE_FIXES.md`.
4. Crosshairs and HUD: original or CC0 only. Credit in the PR body.
5. Do not “improve feel” by shipping copyrighted viewmodels.

## How to test a script change

1. Compile to `cleo\AW_FPS_*.cs` on SA 1.0 + SilentPatch + one FP camera plugin.
2. Note CLEO version and FP plugin in the PR.
3. Write what broke: dash through walls, double hitmarker, HUD fighting GTA V HUD, etc.

## Suggested first tasks

See [ROADMAP.md](ROADMAP.md). Good first issues: opcode cleanup, INI reader via CLEO+, sprite TXD pack script.
