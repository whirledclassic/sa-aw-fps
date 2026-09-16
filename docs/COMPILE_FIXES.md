# If Sanny Builder errors

These sources target **stock Sanny Builder 4 + CLEO 4.4.3**. You should not need Opcode Search for the 0.3 scripts.

| Line intent | Opcode used |
|---|---|
| player exists | `0256: player $PLAYER_CHAR defined` |
| on foot | `044B: actor $PLAYER_ACTOR on_foot` |
| controllable | `03EE: player $PLAYER_CHAR controllable` |
| coords | `04C4: store_coords_from_actor $PLAYER_ACTOR into 1@ 2@ 3@` |
| ground Z | `02CE: get_ground_z_for_3d_coord 1@ 2@ 3@ store_to 4@` |
| put actor | `00A1: put_actor $PLAYER_ACTOR at 1@ 2@ 3@` |
| heading | `0172: 1@ = actor $PLAYER_ACTOR z_angle` |
| actor offset | `0407: store_coords_to 1@ 2@ 3@ from_actor $PLAYER_ACTOR with_offset 0.0 1.45 0.0` |
| nearby actor | `0AE1: 7@ = random_actor_near_point 10@ 11@ 12@ in_radius 16.0 find_next 8@ pass_deads 1` |
| key VK | `0AB0: key_pressed 0x20` |
| game control | `00E1: player 0 pressed_key 14` |
| cheat | `0ADC: test_cheat "AWFPS"` |
| text box | `0ACA: show_text_box "text"` |
| give weapon | `01B2: give_actor $PLAYER_ACTOR weapon 31 ammo 150` |
| strip one gun | `0555: remove_weapon_from_actor $PLAYER_ACTOR 31` |
| health | `0226: 1@ = actor $PLAYER_ACTOR health` |
| dead | `0118: actor 1@ dead` |
| draw box | `038E: draw_box_position 320.0 240.0 size 10.0 2.0 RGBA 170 255 170 200` |
| text draw on | `03F0: enable_text_draw 1` |

`0407` offsets: **X = right, Y = forward, Z = up**.

If `0AE1` is missing, your CLEO is older than 4.3. Install CLEO 4.4.3 from https://github.com/cleolibrary/CLEO4/releases

If dash still clips through walls, that is the `00A1` teleport. Issue #2 is the ASI velocity rewrite.
