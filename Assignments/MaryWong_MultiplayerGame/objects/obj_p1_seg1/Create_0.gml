seg1_id = instance_id_get(0);



fix_seg1 = physics_fixture_create();
physics_fixture_set_box_shape(fix_seg1, 0,0);
physics_fixture_bind(fix_seg1, id);
physics_fixture_bind(fix_seg1, obj_p1_base.base_id);
physics_joint_wheel_create(id, obj_p1_base.base_id, obj_p1_base.base_id.x-16, obj_p1_base.base_id.y, 0, 1, true, 10, 1, 15, 6, false);
physics_fixture_delete(fix_seg1);