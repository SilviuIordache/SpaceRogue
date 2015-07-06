dmg = argument0;
idd = instance_create(x + irandom_range(-6, 6) - 6, 
                      y + irandom_range(-6, 6) - 6, 
                      obj_damage)

idd.damageValue = dmg * 10;
