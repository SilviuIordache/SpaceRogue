for (i = 0; i < roomArrayW; i += 1)
{
    for (j = 0; j < roomArrayH; j += 1)
    {
        if (roomArray[i, j].available == 1 || 
            roomArray[i, j].available == 9 ||
            roomArray[i, j].available == 4 ||
            roomArray[i, j].available == 2 )
        {
            if ( roomArray[i, j - 1].available >=  1 && roomArray[i, j - 1].available <= 9)
                              roomArray[i, j].doorLayout = 1;
            if ( roomArray[i, j + 1].available >=  1 && roomArray[i, j + 1].available <= 9)
                              roomArray[i, j].doorLayout = 2;
            if ( roomArray[i + 1, j].available >=  1 && roomArray[i + 1, j].available <= 9)
                              roomArray[i, j].doorLayout = 3;
            if ( roomArray[i - 1, j].available >=  1 && roomArray[i - 1, j].available <= 9)
                              roomArray[i, j].doorLayout = 4;                          
                                          
            if ((roomArray[i - 1, j].available >=  1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j - 1].available >=  1 && roomArray[i, j - 1].available <= 9))
                    roomArray[i, j].doorLayout = 5;
                      
            if ((roomArray[i, j + 1].available >=  1 && roomArray[i, j + 1].available <= 9) &&     
                (roomArray[i, j - 1].available >=  1 && roomArray[i, j - 1].available <= 9))
                    roomArray[i, j].doorLayout = 6;
                    
            if ((roomArray[i, j - 1].available >=  1 && roomArray[i, j - 1].available <= 9) &&     
                (roomArray[i + 1, j].available >=  1 && roomArray[i + 1, j].available <= 9))
                    roomArray[i, j].doorLayout = 7;

            if ((roomArray[i + 1, j].available >= 1 && roomArray[i + 1, j].available <= 9) && 
                (roomArray[i - 1, j].available >= 1 && roomArray[i - 1, j].available <= 9))
                    roomArray[i, j].doorLayout = 8;
                    
            if ((roomArray[i - 1, j].available >= 1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j + 1].available >= 1 && roomArray[i, j + 1].available <= 9))
                    roomArray[i, j].doorLayout = 9;
                    
            if ((roomArray[i + 1, j].available >= 1 && roomArray[i + 1, j].available <= 9) &&
                (roomArray[i, j + 1].available >= 1 && roomArray[i, j + 1].available <= 9))
                    roomArray[i, j].doorLayout = 10;
             
            if ((roomArray[i - 1, j].available >= 1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j - 1].available >= 1 && roomArray[i, j - 1].available <= 9) &&
                (roomArray[i + 1, j].available >= 1 && roomArray[i + 1, j].available <= 9))
                    roomArray[i, j].doorLayout = 11;
                    
            if ((roomArray[i, j - 1].available >= 1 && roomArray[i, j - 1].available <= 9) &&
                (roomArray[i - 1, j].available >= 1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j + 1].available >= 1 && roomArray[i, j + 1].available <= 9))
                    roomArray[i, j].doorLayout = 12;
  
            if ((roomArray[i, j - 1].available >= 1 && roomArray[i, j - 1].available <= 9) &&
                (roomArray[i + 1, j].available >= 1 && roomArray[i + 1, j].available <= 9) &&
                (roomArray[i, j + 1].available >= 1 && roomArray[i, j + 1].available <= 9))
                    roomArray[i, j].doorLayout = 13;                         

            if ((roomArray[i + 1, j].available >= 1 && roomArray[i + 1, j].available <= 9) &&
                (roomArray[i - 1, j].available >= 1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j + 1].available >= 1 && roomArray[i, j + 1].available <= 9))
                    roomArray[i, j].doorLayout = 14;

            if ((roomArray[i + 1, j].available >= 1 && roomArray[i, j - 1].available <= 9) &&
                (roomArray[i - 1, j].available >= 1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j + 1].available >= 1 && roomArray[i - 1, j].available <= 9) &&
                (roomArray[i, j - 1].available >= 1 && roomArray[i, j + 1].available <= 9))
                    roomArray[i, j].doorLayout = 15;
        }
    }
}

/*
________________________________
_______1 door category__________
 - O -   
|     |
|  1  |
|     |
 - - -
 
 - - -
|     |
|  2  |
|     |
 - O -
 
 - - -
|     |
|  3  O
|     |
 - - -
 
 - - -
|     |
O  4  |
|     |
 - - -
_______1 door category__________
________________________________


________________________________
_______2 door category__________
 - O -
|     |
O  5  |
|     |
 - - -
 
 - O -
|     |
|  6  |
|     |
 - O -
 
 - O -
|     |
|  7  O
|     |
 - - -
 
 - - -
|     |
O  8  O
|     |
 - - -
 
 - - -
|     |
O  9  |
|     |
 - O -
 
 - - -
|     |
| 10  O
|     |
 - O -
_______2 door category__________
________________________________


________________________________
_______3+ door category_________
 - O -
|     |
O 11  O
|     |
 - - -
 
 - O -
|     |
O 12  |
|     |
 - O -
 
 - O -
|     |
| 13  O
|     |
 - O -
 
 - - -
|     |
O 14  O
|     |
 - O -
 
 - O -
|     |
O 15  O
|     |
 - O -
_______3+ door category_________
________________________________