show_debug_message("selected:");
show_debug_message(global.selected);
show_debug_message(100 + ((global.selected*100)+100) + 32);
//for reference:
//global.selected is the index number of the glowing item
//global.item is the id of the selected item
    

    //the first time u select something
        if(!instance_exists(obj_glow)){
           
            instance_create(100 + ((global.selected*100)+100) + 32,32,obj_glow);

        } else{
            //if something is already selected
            glowBall = instance_find(obj_glow,1);
            if(glowBall.visible && global.item == -1 && global.selected == -1){
                //if you clicked on one thats already glowing, deselect it
                    glowBall.visible = false;
            
            //if one is glowing and you click another one, just move the glow
            }else{
            //glow exists, but nothing is selected yet
                //action_move_to(100 + ((global.selected*100)+100) + 32,32);
                glowBall.x = 100 + ((global.selected*100)+100) + 32;
                glowBall.visible = true;
        }
    }
 
