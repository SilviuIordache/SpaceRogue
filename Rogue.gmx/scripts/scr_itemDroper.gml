
healthChance = irandom(100);
oxygenChance = irandom(100);

if( healthChance < global.hpChance)
    instance_create(x, y, obj_pickUp_Health)
if( oxygenChance < global.oxyChance)
    instance_create(x, y, obj_pickUp_Oxygen)
    
