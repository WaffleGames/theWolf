//put it in first available box
            //check which box doesnt have an item in it, and put it in first one
            for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
                show_debug_message("Called me !!!!!!!!!!!!!!!!!!!!!!!!!!");
                     global.invArray[i].id.item = global.inventoryContents[i];
                     in_inv = 1;
                     break;
                }
            }
            
//for columns: need to signify that an item has been removed from a col
if(room == facingPuzzle){
    if(global.hallwayCol1 != "" and global.hallwayCol1 != 0 ){
        global.placementFlagHallwayCol1 = 0;
    }else if(global.hallwayCol2 != "" and global.hallwayCol2 != 0 ){
        global.placementFlagHallwayCol2 = 0;
    }
    
    
    
}
