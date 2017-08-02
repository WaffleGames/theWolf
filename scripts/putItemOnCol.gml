///puts a valid item on the column
//the column will then be in charge of maintaining that item's existence (I think)
if(global.selected != -1){
    if(object_get_name(global.inventoryContents[global.selected].object_index) == 'skull_obj' 
    or object_get_name(global.inventoryContents[global.selected].object_index) == 'brick_obj' 
    or object_get_name(global.inventoryContents[global.selected].object_index) == 'block_wood_obj'){
        //item is valid to weigh down the column
        
        return object_get_name(global.inventoryContents[global.selected].object_index);
        
    
    }else{
        //not a valid item to weigh down the column
        show_debug_message("This item is not heavy enough, it won't budge.");
        return "";
    }
}else{
    //no item selected, so can't push it down
    show_debug_message("It needs something heavy to push it down...");
    return "";
}
