//get the inventory # of which item is currently being used by the player
//global.click_id = instance_place(mouse_x, mouse_y, inInTest); //what if detect colliison w black box

//if clicking on item currently selected, deselect it

show_debug_message("In lcitem2. 5.");
if(global.item == self){
    global.item = -1;
    global.selected = -1;

} else{
    show_debug_message("inv:");
    
    if( (global.item.object_index == bit_obj && id.object_index == screwdriver) || (global.item.object_index == screwdriver && id.object_index == bit_obj) ){
        //building the complete screwdriver
        
        //destroy item currently selected
        deleteMe = global.item; 
        global.inventoryContents[global.selected] = -1;
        global.item = -1;
        global.invArray[global.selected].id.item = -1;
        global.selected = -1;
        with(deleteMe){
            instance_destroy();
        }
        //create the real one
        for(i=0;i<global.arrayLen;i++){
        if(global.inventoryContents[i] == -1){
            newScrew = instance_create(100 + ((i*100)+100) + 32,32,screwdriver);
            newScrew.image_index = 0;
            global.inventoryContents[i] = newScrew;
            global.invArray[i].id.item = newScrew;
            newScrew.in_inv = 1;
            newScrew.persistent = true;
            showText("The pieces fit together.", 10,512,650);
            break;
        }
    }
        
        
        instance_destroy(); //destroy the one u clicked on
    } else{
        
        for(i=0;i<global.arrayLen;i++){
        show_debug_message(global.inventoryContents[i]);
            if(global.inventoryContents[i] == self){
                global.selected = i;
                show_debug_message("SSSSS");
                global.item = self;
            }
        }
    }
}
script_execute(glowSprite); //always executed
