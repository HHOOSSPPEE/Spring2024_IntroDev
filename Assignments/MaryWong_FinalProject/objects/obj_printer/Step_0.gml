if(Interactable(id, 64)) create_ui_textbox(text_id)

if ((keyboard_check(ord("Z"))) && hp <= hp_max) hp += healspeed


if (hp <= 0) text_id = "printer broken";
if (hp >= hp_max) text_id = "";