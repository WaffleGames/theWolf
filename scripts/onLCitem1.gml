//pick up this item from ground

if(global.item==-1){
    //global.item = object_index;
    //instance_destroy();
    //draw the object into the inventory box approriate
    
    for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
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
    
    
    script_execute(addToInv);
}

