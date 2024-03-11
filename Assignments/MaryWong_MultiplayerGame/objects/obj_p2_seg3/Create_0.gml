fix_seg3 = physics_fixture_create();
physics_fixture_set_box_shape(fix_seg3, 0,0);
physics_fixture_bind(fix_seg3, id);
physics_fixture_bind(fix_seg3, obj_p2_seg1.seg1_id);
physics_joint_wheel_create(obj_p2_seg1.seg1_id, id, x, y, 0, 1, false, 10, 1, 15, 6, false);
physics_fixture_delete(fix_seg3);