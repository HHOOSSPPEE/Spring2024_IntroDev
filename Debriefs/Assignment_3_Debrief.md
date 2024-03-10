### **2023 Spring** - Angelina Xi
### *Assignment 3* - Multiplayer
Link to game: https://angelinaxi.itch.io/multiplayer-game


## **Debrief**
I ended up making a multiplayer game featuring two sci-fi characters exploring a deserted planet. Inhabited by evil slimes and flying creatures, they must kill all of them before progressing. Additionally, there are cursed objects at the end of each stage that only one player can pick up, granting them power ups at a cost. Items players can pick up are faster player speed, longer invincibility time, and permanent invincibility. However, all items are at the cost of the player’s health. At the fourth stage, there is an empty level with just an item that grants royalty at the cost of another player’s life (a curse). Initially, I wanted both players to battle each other for the last level. Only by killing the other companion can you gain the final item. But I ran into a few problems of characters immediately dying and not according to the amount of health left. As a result, I just decided to simplify the final stage to a character just automatically dying upon another player collecting the item.

Within the game, I found it a bit hard to implement the theme “curse” into a multiplayer game. Initially I thought of an idea similar to FireBoy and WaterGirl where one character couldn’t touch a certain object that another player can only touch. However, I didn’t really see a way to connect curses into the mechanics or plot. Also, it required some element of puzzle that I didn’t really want to design and implement. As a result, I decided to implement an object that acted like a curse. While gaining something beneficial, there is also something detrimental. However, what I liked about the game was that the game is split-screen where each player can walk around freely with arrows showing where the other player is. While I struggled in the beginning to limit the arrows to their respective screens, I was able to fix it later with help from the professor. Something else I liked was the enemy AI. Although I think the code can be condensed and made a lot neater, I was able to make the enemy chase players at a certain distance and also shoot them at a certain distance. Otherwise, the enemy would stay still. I was able to code this with some help from the Gamemaker resource and also googling how other people implemented enemy AI.

Something I would do differently is organize my code by making functions and hopefully tidy it up. In this project, I found that I copy and pasted a lot of code. For example, the code for both characters is the exact same. Therefore, I think I could’ve created a parent object or a function that would have shortened the code by a lot. Something I would repeat is making complex characters and enemies that complicates gameplay and makes it more interesting.

## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 5

*3 - To be honest, I kind of had no idea what to do with curses. In the end I just implemented the theme into objects that gave “curses” on top of blessings.*


**Scope** (How well do you feel you scoped your game?) - 5


*4 - I think I made the game a bit too complicated in the mechanics and also the code. I felt that there was a lot going on and that I could have condensed my code.*


**Overall** - Pass/Fail


*Pass - I think I achieved what I wanted to make and successfully made it more complex compared to my previous project.*
