### **2024 Spring** - Hudson J
### *Assignment 4* - Inventory
Link to game: (https://hudsonjanow.itch.io/inventory-demo)

## **Debrief**
Inventories! YAY SYSTEM BUILDING...said nobody ever. This week was tough. The inventory system required advanced things like structs, arrays, for loops, and tons and tons of small details in gamemaker that I hadn't known before. The assignment was to worry more about the system itself than the game, so unfortunately I didn't get to the game itself too much, but I was building an inventory with a game either like a farming sim or something similar to Forager in mind. I made the item structs so that you can easily create as many items as you want, and then call them just by changing for instance global.item_list.apple to global.item_list.turnip. While the inventory can be expanded and shrunk as much as you want, I didn't have time to add the variability to the inventory frames. They are currently just objects placed where your items get added that can be toggled with the I inventory key. The item structs also allow for different functions and effects when you use an item. An apple can restore health, a cherry could increase a stat or something along the lines of that. They also all have a price within their struct that can be used for a buy or sell mechanic later. This lets me just call on the item within the item list and the game will check for its price based on that. I'm super happy with how that part of the system works, because of how easy it is to add more items, change old ones, or add functionality or data to an existing one. I would probably bake in the frames so that you can create an upgrade for more inventory space later, and obviously I would build the game around this system so its not just an inventory showcase. Considering how much of this I didn't know going in, I am proud with what I came up with, and given a bit more time and creativity with UI and items, I could see myself easily integrating it into a game.



## **Self Evaluation**

**Execution** (Did your project meet the theme you gave it?) - 5

*My theme was lush, and everything is green and naturey. If this were to become a farming sim it would hit the nail even harder on the head*


**Scope** (How well do you feel you scoped your game?) - 5


*I knew I was making an inv system and that the game came second, so I focused on that and got it working in a way im happy with.*


**Overall** - Pass


*I think I easily pass because this game while lacking in gameplay, has a working, and forward compatible inventory system, that feels pretty decent to use.*
