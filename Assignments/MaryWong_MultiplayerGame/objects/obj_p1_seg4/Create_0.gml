fix_seg4 = physics_fixture_create();
physics_fixture_set_box_shape(fix_seg4, 0,0);
physics_fixture_bind(fix_seg4, id);
physics_fixture_bind(fix_seg4, obj_p1_seg2.seg2_id);
//physics_joint_wheel_create(id, obj_p1_seg2.seg2_id, obj_p1_seg2.seg2_id.x, obj_p1_seg2.seg2_id.y-64, 0, 1, true, 10, 1, 15, 6, false);
physics_joint_distance_create(id, obj_p1_seg2.seg2_id, obj_p1_seg2.seg2_id.x, obj_p1_seg2.seg2_id.y, x, y, 0);
physics_fixture_delete(fix_seg4);