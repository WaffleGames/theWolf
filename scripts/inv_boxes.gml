///draws the inventory boxes

var my_inst;
space = 100;
for(i=0;i<global.arrayLen;i++){
    my_inst = instance_create(100 + space, 0, obj_inventory_box);
    global.invArray[i] = my_inst; //array of inventory objects
    global.inventoryContents[i] = -1; //whats in each slot
    space = space + 100;
}
