seg1_id = instance_id_get(0);

fix_redseg1 = physics_fixture_create();
physics_fixture_set_box_shape(fix_redseg1, 0,0);
physics_fixture_bind(fix_redseg1, id);
physics_fixture_bind(fix_redseg1, obj_p2_base.redbase_id);
physics_joint_wheel_create(id, obj_p2_base.redbase_id, obj_p2_base.redbase_id.x-16, obj_p2_base.redbase_id.y, 0, 1, true, 10, 1, 15, 6, false);
physics_fixture_delete(fix_redseg1);