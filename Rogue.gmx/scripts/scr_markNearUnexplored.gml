i = argument0
j = argument1

o = roomArray[i - 1,j].available
if(o == 4 || o == 9 || o == 1 || o == 2 )
    roomArray[i - 1,j].nearUnexplored = true;
    
o = roomArray[i,j - 1].available
if(o == 4 || o == 9 || o == 1 || o == 2 )
    roomArray[i,j - 1].nearUnexplored = true;
    
o = roomArray[i + 1,j].available
if(o == 4 || o == 9 || o == 1 || o == 2 )
    roomArray[i + 1,j].nearUnexplored = true;
    
o = roomArray[i,j + 1].available
if(o == 4 || o == 9 || o == 1 || o == 2 )
    roomArray[i,j + 1].nearUnexplored = true;
