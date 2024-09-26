materials = [spr_mat_cabbage, spr_mat_chicken, spr_mat_fish, spr_mat_leek, spr_mat_peas, spr_mat_tomato];

_self = irandom_range(0, 5);

image_xscale = obj_manager._iscale;
image_yscale = obj_manager._iscale;

sprite_index = materials[_self];