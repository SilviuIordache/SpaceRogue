for (i = 0; i < roomArrayW; i += 1)
{
    for (j = 0; j < roomArrayH; j += 1)
    {
        if (roomArray[i, j].available ==  1 ||
            roomArray[i, j].available == -1 ||
            roomArray[i, j].available ==  9)
        {
            roomArray[i, j].roomLayout = irandom(4);
        }
    }
}