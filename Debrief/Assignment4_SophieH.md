### **2023 Spring** - Sophie H
### *Assignment 0* - Project 4 - Inventory Game
Link to game: ([itch link](https://sophiahughes.itch.io/project-4-inventory-sophie-hughes))


## **Debrief**
In at least 400 words, write a debrief. You must write a reflection on your assignment. In addition to specific requirements stated for the assignment, you must answer the following:

The theme I chose for this project was growth. I decided to go for a farming type game, where the player would harvest plants and sell them for coins. The theme fits since the plants are growing, and the game revolves around harvest. I chose cute pixel farm art from itch.io for my game, since I thought it matched the theme and vibe I was going for. The game uses WASD controls, and players can left click while standing next to plants to collect harvest, hold e to open inventory, and lift e to close. Within the inventory, players can right click on inventory boxes and specific plants to sell them. 

I ran into a few challenges along the way. First I approached the player movement, and was able to add player animations using directions, states, and switch statements. I haven't done that much before, so it was pleasing to see it work. I had some issues with collision with tilemaps but eventually figured it out. Creating the layout of the farm was more complex than expected, since the tilemap pngs came seperately for each tile type, and I decided not to combine them all in photoshop for whatever reason. So, I have lots of unnecessary tile layers. Next time, I might just use collision boxes. 

The inventory was difficult to implement, but it was overall fun. I found a few tutorials that showed how to add specific types of customizations such as making the inventory box glow when the mouse is hovering, and how to effectively make the inventory layout with draw gui. The project also gave me a better understanding of how functions work in game engines, and how useful they can be. I also ran into an issue where the plant inventory array would stop deleting when right clicking/selling after 2, and the player wasn't able to sell the last produce. However, it was just an issue of "<" vs "<=".

Lastly I added the function of actually collecting the plants by left clicking, and implementing the inventory function whenever these were collected. Also, I added a respawn rate(added a timer) and made it so the frame of the image would change whenever a certain amount of time has passed so it would look like the plants are growing. Also, I made sure that when collecting from a plant, the number added to the inventory would correspond to the number shown in the pixel art of each plant. 

If I would add more things, I would add an actual store location within the game where players can set up store inventory, add music and sound effects, more types of crops and items, make the cows milkable, etc. I am glad to have learned inventory mechanics and character animations since it is an essential part of a lot of games. 

Please do not answer these questions individually, but include it in a paragraph format.

## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 5

*I think plants and harvset fit "growth" reasonably well.*


**Scope** (How well do you feel you scoped your game?) - 4


*I was able to complete everything I originally planned. As I worked on it, I kept on thinking of more things so I still should've left more time.*


**Overall** - Pass


*I think I met the project requirements. I think through this project, I improved my gamemaker skills a lot. I experimented more than previously, which was fun.*
