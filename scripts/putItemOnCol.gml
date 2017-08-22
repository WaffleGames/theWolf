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
        showText("This item is not heavy enough, it won't budge.", 10,512,650);
        return "";
    }
}else{

       //if puzzle is finished
       show_debug_message(image_index);
        if(global.cupDropped == 1 && image_index == 1){
            showText("It won't budge.", 10,512,650);
            return "";
        } /*else if(global.cupDropped == 1 && image_index == 0){
            showText("I'm done with this puzzle.", 10,512,650);
            return "";
        } */else{
    
        //no item selected, so can't push it down
            showText("It needs something heavy to push it down...",10,512,650);
            return "";
        }
}
