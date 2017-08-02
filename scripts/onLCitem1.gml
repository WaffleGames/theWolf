//pick up this item from ground

show_debug_message("Called lcitem1. 1.");
if(global.item==-1){
    //global.item = object_index;
    //instance_destroy();
    //draw the object into the inventory box approriate
    show_debug_message("Adding to inventory 2.");
    for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
                    show_debug_message("Moved item into inventory. 3.");
                     action_move_to(100 + ((i*100)+100) + 32,32);
                     global.inventoryContents[i] = id;
                     //global.nameArray[i] = object_get_name(id.object_index);
                     break;
                }
            }
    
    //detect which item it is and remove it from the scene, alter global variables
    my_object_name = object_get_name(id.object_index);
    show_debug_message(my_object_name);
    
    switch (my_object_name){
        case 'skull_obj':
            global.haveSkull = 1;
            break;
        case 'obj_keyUnder':
            global.doneDogBowl = 1;
            break;
        case 'glass_obj':
            global.haveGlass = 1;
            break;
        case 'fluff_obj':
            global.doneFluff = 1;
            break;
        case 'desk_brick_obj': //may need to alter after or add conditions to pick up actual brick
            global.haveBrick = 1;
            break;
    }
    
    show_debug_message("Calling addtoInv from lcitem1. 4.");    
    script_execute(addToInv);
}


///check the room and if ur in it, move the col to up position

if(room == facingPuzzle){
        if(global.hallwayCol1 == object_get_name(id.object_index) ){
            blue_col_obj = instance_find(col_blue, 1);
            global.hallwayCol1 = "";
            blue_col_obj.image_index = 0;
            global.doneHallwayBlueCol = 0;
        }else if(global.hallwayCol2 == object_get_name(id.object_index) ){
            middle_col_obj = instance_find(col_middle, 1);
            global.hallwayCol2 = "";
            middle_col_obj.image_index = 0;
            global.doneHallwayCol = 0;
        }else if(global.hallwayCol3 == object_get_name(id.object_index) ){
            yellow_col_obj = instance_find(col_yellow, 1);
            global.hallwayCol3 = "";
            yellow_col_obj.image_index = 0;
            global.doneHallwayYellowCol = 0;
        }
        
}else if(room == A_room2){
        if(global.roomACol1 == object_get_name(id.object_index) ){
            green_col_obj = instance_find(col_green, 1);
            global.roomACol1 = "";
            green_col_obj.image_index = 0;
            global.doneRoomAGreenCol = 0;
        }else if(global.roomACol2 == object_get_name(id.object_index) ){
            right_col_obj = instance_find(norm_col_A, 1);
            global.roomACol2 = "";
            right_col_obj.image_index = 0;
            global.doneRoomACol = 0;
        }     
}else if(room == B_room4){
        if(global.roomBCol1 == object_get_name(id.object_index) ){
            l_col_obj = instance_find(left_col_obj, 1);
            global.roomBCol1 = "";
            l_col_obj.image_index = 0;
            global.doneRoomBCol = 0;
        }else if(global.roomBCol2 == object_get_name(id.object_index) ){
            red_column_obj = instance_find(red_col_obj, 1);
            global.roomBCol2 = "";
            red_column_obj.image_index = 0;
            global.doneRoomBRedCol = 0;
        }  
}
