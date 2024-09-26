### **2023 Spring** - Leo Fu
### *Assignment 0* - Inventory game - Tricky
Link to game: (itch link) https://yf2360.itch.io/narrative-game-wash


## **Debrief**
- What did you end up making?
- Which of the game’s aspects did you like about this project?
- What resources and/or comments were most helpful to you?
- What will you repeat or do differently next time?

I made a puzzle game that required players to arrange their inventory to generate new cubes and put them in the square correctly. The word I chose is tricky because I think inventory has some potential gameplay if I can add some puzzles and tricks to it. In the first and second levels, the player only needs to pick up the cube and put it in the correct position. However, in the third and final level, players need to play around with their inventory and find out the correct arrangement of the inventory to unlock and generate new stuff.
I like the code of inventory and how to implement functions like drag and drop related to the inventory's UI. This really helped me learn the basic idea of how inventory works in other games. I used an array for this project, and I found the process really complicated but satisfying. I also like the process of thinking about gameplay. Previously, I thought only having inventory in the game was boring. Then, I thought about playing with the arrangement inside the inventory to make the game trickier.
During the project, I had a big problem. Initially, I pick cubes and store them in my inventory. Then, I can drag them out from the inventory UI and drop them into the appropriate position. But when I try to pick them up again, they won’t disappear. I tried instance_destoy, but in this way, I cannot see them in my inventory UI. Then I try to set the cube to invisible.false when I pick it up. However, due to the invisibility, the code seems more complicated when you can only put one cube in the position of the square. Then I asked AI, and it said instead of putting an instance in my inventory, I put Sprite in it. When I drag and drop them, write a function to refer each sprite to their object and drop the object there.

Based on what I learned, next time I will put Sprites in the inventory, write a function to refer each sprite to its object, and drop the object there. This method avoids a lot of confusion. I will also try to use the slot, as the lecture discussed. 





## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 5

*Yes, it met. The word is Tricky and I think the game has puzzles and tricky gameplay that require players to think about.

**Scope** (How well do you feel you scoped your game?) - 5


*I think the idea is cool and unique, but I don't have much time to finish a big version of it. In the future, maybe I'll add more levels and more cubes that can be generated under different conditions.*


**Overall** - Pass


*This is a demo for the indie game I want to make. I think it shows the unique gameplay and some interesting puzzles. I will complete it in the future. *
