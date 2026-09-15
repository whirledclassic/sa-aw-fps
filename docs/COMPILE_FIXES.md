# If Sanny Builder errors

Sanny’s opcode names differ slightly between SA, CLEO 4, and CLEO+. Use Opcode Search.

| Line intent | Try these names |
|---|---|
| player exists | `0256: player $PLAYER_CHAR defined` |
| on foot | `044B: actor $PLAYER_ACTOR on_foot` |
| coords | `04C4: store_coords_from_actor $PLAYER_ACTOR into 1@ 2@ 3@` |
| ground Z | `02CE: get_ground_z_for_3d_coord 1@ 2@ 3@ store_to 4@` |
| put actor | `00A1: put_actor $PLAYER_ACTOR at 1@ 2@ 3@` |
| heading | `0172: 1@ = actor $PLAYER_ACTOR z_angle` |
| actor offset | `0407: store_coords_to 1@ 2@ 3@ from_actor $PLAYER_ACTOR with_offset 2.0 0.0 0.0` |
| key VK | `0AB0: key_pressed 0x20` |
| game control | `00E1: player 0 pressed_key 14` |
| cheat | `0ADC: test_cheat "AWFPS"` |
| text box | `0ACA: show_text_box "text"` |
| give weapon | `01B2: give_actor $PLAYER_ACTOR weapon 31 ammo 150` |
| health | `0226: 1@ = actor $PLAYER_ACTOR health` |
| dead | `0118: actor 1@ dead` |
| draw box | `038E: draw_box 320.0 240.0 10.0 2.0 170 255 170 200` |
| text draw on | `03F0: enable_text_draw 1` |

If `0AB3 get_actor_in_sphere` does not exist in your CLEO:

```
0AE1: 7@ = random_actor_near_point 10@ 11@ 12@ in_radius 12.0 find_next 0 pass_deads 1
```

If `put_actor` dash feels like teleporting through walls, comment out the three `do_dash_*` bodies until you move this logic to an ASI.
