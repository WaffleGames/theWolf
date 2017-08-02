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
    }else if(global.hallwayCol3 != "" and global.hallwayCol3 != 0 ){
        global.placementFlagHallwayCol3 = 0;
    }
}else if(room == A_room2){
    if(global.roomACol1 != "" and global.roomACol1 != 0 ){
        global.placementFlagRoomACol1 = 0;
    }else if(global.roomACol2 != "" and global.roomACol2 != 0 ){
        global.placementFlagRoomACol2 = 0;
    }

}else if(room == B_room4){
    if(global.roomBCol1 != "" and global.roomBCol1 != 0 ){
        global.placementFlagRoomBCol1 = 0;
    }else if(global.roomBCol2 != "" and global.roomBCol2 != 0 ){
        global.placementFlagRoomBCol2 = 0;
    }

}
