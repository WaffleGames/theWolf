//get the inventory # of which item is currently being used by the player
//global.click_id = instance_place(mouse_x, mouse_y, inInTest); //what if detect colliison w black box

if(global.item == self){
    global.item = -1;
    global.selected = -1;

} else{
    for(i=0;i<global.arrayLen;i++){
        if(global.inventoryContents[i] == self){
            global.selected = i;
            show_debug_message("SSSSS");
            show_debug_message(global.selected);
            global.item = self;
        }
    }
}
script_execute(glowSprite);
