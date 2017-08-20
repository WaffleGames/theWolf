//pick up this item from ground

show_debug_message("Called lcitem1. 1.");
if(global.item==-1){
    //global.item = object_index;
    //instance_destroy();
    //draw the object into the inventory box approriate
        show_debug_message("Adding to inventory 2.");
    if(id.object_index == desk_brick_obj){
        //if the item is the brick, switch it out
        instance_destroy();
        for(i=0;i<global.arrayLen;i++){
                    if(global.invArray[i].id.item == -1){
                        show_debug_message("Moved item into inventory. 3333.");
                         new_brick = instance_create(100 + ((i*100)+100) + 32,42,brick_obj);
                         global.inventoryContents[i] = new_brick;
                         new_brick.in_inv = 1;
                         new_brick.persistent = true;
                         global.haveBrick = 1;
                         break;
                    }
                }
        script_execute(addToInv);
    
    }else if(id.object_index == fluff_obj and id.image_index == 0){ 
        //for the fluff, don't add it right away if its still floof
        id.image_index = 1;
        global.doneFluff =1;
    
    }else{

    for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
                    show_debug_message("Moved item into inventory. 3.");
                     action_move_to(100 + ((i*100)+100) + 32,42);
                     global.inventoryContents[i] = id;
                     //global.nameArray[i] = object_get_name(id.object_index);
                     break;
                }
            }
   
    //detect which item it is and remove it from the scene, alter global variables
    my_object_name = object_get_name(id.object_index);
    //show_debug_message(my_object_name);
    
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
            if(id.image_index == 0){
                global.doneFluff = 1;
                break;
            }else{
                global.doneFluff = 2;
                break;
            }
        case 'cup_obj':
            global.haveCup = 1;
            break;
        case 'bit_obj':
            global.haveBit = 1;
            break;
        /*case 'desk_brick_obj': //may need to alter after or add conditions to pick up actual brick
            global.haveBrick = 1;
            break;*/
    }
    
    show_debug_message("Calling addtoInv from lcitem1. 4.");    
    script_execute(addToInv);
    }
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

//reset the cup if you pick it up again at the pipe without filling it up
if(room == pipe_far){
    if(id.object_index == cup_obj){
        global.putDownTheCup = 0;
    
    }
}
