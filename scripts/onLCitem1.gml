//pick up this item from ground

if(global.item==-1){
    //global.item = object_index;
    //instance_destroy();
    //draw the object into the inventory box approriate
    
    for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
                     action_move_to(100 + ((i*100)+100) + 32,32);
                     global.inventoryContents[i] = id;
                     break;
                }
            }
    
    //detect which item it is and remove it from the scene, alter global variables
    my_object_name = object_get_name(id.object_index);
    show_debug_message(my_object_name);
    
    switch (my_object_name){
        case 'skull_obj':
            global.haveSkull = 1;
            show_debug_message("got this one");
            break;
    }
    
    
    script_execute(addToInv);
}

