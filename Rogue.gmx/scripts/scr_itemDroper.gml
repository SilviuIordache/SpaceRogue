
healthChance = irandom(100);
oxygenChance = irandom(100);

if( healthChance < 5)
    instance_create(x, y, obj_pickUp_Health)
if( oxygenChance < 15)
    instance_create(x, y, obj_pickUp_Oxygen)


