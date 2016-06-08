with(obj_player) instance_destroy()

instance_create(112, 80, obj_player);


roomIndex = irandom(nrOfRooms - 1) + 1;
roomName = string("rm_normal"+string(roomIndex));
room_goto(asset_get_index(roomName))

//-------MOVEMENT SPEED------------------
global.playerMoveSpeed = 0;
global.playerFrictionFactor = 0.1;
global.playerGainSpeed = 0.2;
global.playerTopSpeed  = 1.2;
global.playerIsMoving = false;
//---------------------------------------

//-------HEALTH POINTS-------------------
globalvar playerMaxHP_base;
          playerMaxHP_base = 5;
globalvar playerMaxHP;
          playerMaxHP      = playerMaxHP_base;
globalvar playerHP;
          playerHP         = playerMaxHP;          
globalvar playerCanTakeDmg;
          playerCanTakeDmg = true
globalvar playerDmgCd;
          playerDmgCd      = 60;
//---------------------------------------

//----- WEAPONS--------------------------
globalvar currentWeapon;
          currentWeapon = 1;    //1 = Pistol ;; 2 = Assault ;; 3 = Shotgun ;; 4 = Rocket
global.pistol_Bullet_Speed      = 5
global.pistol_Bullet_Dmg        = 2.5;
global.pistol_Bullet_cd         = 20
global.canShootPistol           = true

global.rifle_Bullet_Speed       = 3.5
global.rifle_Bullet_Dmg         = 0.5;
global.rifle_Bullet_cd          = 6
global.canShootRifle            = true

global.shotgun_Bullet_Speed     = 3;
global.shotgun_Bullet_Dmg       = 1.2;
global.shotgun_Bullet_cd        = 60
global.canShootShotgun          = true

global.RPG_Bullet_Speed         = 5
global.RPG_Bullet_Dmg           = 10;
global.RPG_Bullet_cd            = 100;
global.canShootRPG              = true
//---------------------------------------- 

//-----OXYGEN-------------
oxygenLevel        = 100;
oxygenRate         = 0.1;
oxygenCanDmg       = true;
oxygenPickUpValue  = 35;
//------------------------

//----ITEMS---------------
global.hpChance     = 8
global.oxyChance    = 15;
//------------------------
