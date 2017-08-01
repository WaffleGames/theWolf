///remove item from inventory after being used
global.item = -1;
global.invArray[global.selected].id.item = -1;
//destroy the instance of the variable
with(global.inventoryContents[global.selected]){
    instance_destroy();
}
global.inventoryContents[global.selected] = -1;
global.selected = -1;
//call glowSprite to update the glow
script_execute(glowSprite);
