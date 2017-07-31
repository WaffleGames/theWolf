//pick up this item from ground

if(global.item==-1){
    //global.item = object_index;
    //instance_destroy();
    //draw the object into the inventory box approriate
    
    for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
                     action_move_to(100 + ((i*100)+100) + 32,32);
                     global.inventoryContents[i] = id;
                     show_debug_message("id:");
                     show_debug_message(id);
                     break;
                }
            }
}
script_execute(addToInv);
