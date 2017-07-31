show_debug_message("selected:");
show_debug_message(global.selected);
//for reference:
//global.selected is the index number of the glowing item
//global.item is the id of the selected item

if(global.selected != -1){

//if you clicked on one thats already glowing, deselect it
    
    if(instance_place(mouse_x,mouse_y,obj_glow)){
        global.selected = -1;
        object_set_visible(obj_glow,false);
        
    }
    //if one is glowing and you click another one, deglow one and glow the other
    if(global.item!=-1 && id!= global.item){
        //get the inventory # of which item is currently being used by the player
        var clicked = instance_place(mouse_x, mouse_y, obj_item_parent);
        
        for(i=0;i<global.arrayLen;i++){
            if(global.inventoryContents[i] == clicked){
                global.selected = i;
            }
        }
        action_move_to(100 + ((global.selected*100)+100) + 32,32);
    } 
 } else{
    //just make it glow
        if(!instance_exists(obj_glow)){

                //var clicked = instance_place(mouse_x, mouse_y, obj_item_parent);
        //show_debug_message("clicked id:");
        //show_debug_message(clicked);
            //if(clicked == noone){
            //show_debug_message("clicked is noone");
            //}
        for(i=0;i<global.arrayLen;i++){
            if(global.inventoryContents[i] == global.click_id){
            show_debug_message("contents:");
            show_debug_message(global.inventoryContents[i]);
                global.selected = i;
                //show_debug_message("i:");
                //show_debug_message(i);
            }
        }
        var g = instance_create(100 + ((global.selected*100)+100) + 32,32,obj_glow);
        global.item = id;
        } else{
                    var clicked = instance_place(mouse_x, mouse_y, obj_item_parent);
            
            for(i=0;i<global.arrayLen;i++){
                if(global.inventoryContents[i] == clicked){
                    global.selected = i;
                }
            }
            action_move_to(100 + ((global.selected*100)+100) + 32,32);
            object_set_visible(obj_glow,true);
        }
    }
 
