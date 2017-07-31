//put it in first available box
            //check which box doesnt have an item in it, and put it in first one
            for(i=0;i<global.arrayLen;i++){
                if(global.invArray[i].id.item == -1){
                     global.invArray[i].id.item = global.inventoryContents[i];
                     in_inv = 1;
                     break;
                }
            }
