///puts a valid item on the column
//the column will then be in charge of maintaining that item's existence (I think)
if(global.selected != -1){
    if(object_get_name(global.inventoryContents[global.selected].object_index) == 'skull_obj' 
    or object_get_name(global.inventoryContents[global.selected].object_index) == 'brick_obj' 
    or object_get_name(global.inventoryContents[global.selected].object_index) == 'block_wood_obj'){
        //item is valid to weigh down the column
        
        return object_get_name(global.inventoryContents[global.selected].object_index);
        
    
    }else{
            //not a valid item to weigh down the column, but still an item
            return "item";
    }
}else{
        return "";
}
