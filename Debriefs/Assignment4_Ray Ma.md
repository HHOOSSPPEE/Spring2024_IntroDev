### **2023 Spring** - Ray Ma
### *Assignment 0* - Inventory
Link to game: https://m00240.itch.io/gods-routine


## **Debrief**


I've developed a game where players gather potions to construct a human, guided by a randomly generated goal they must fulfill within a limited number of moves or "grabs."  If they're able to achieve, they win. If they run out of "grab", they will lose. I'm particularly fond of this concept, as it draws inspiration from a meme, adding some humor to the game. I tried my best to replicate the meme's art style through my art style, and I think it looks pretty good.

In my initial thoughts, in addition to the current gameplay, I'm considering introducing a free mode. This mode would allow players to customize their game experience by inputting the name, gender, and traits of the person they wish to create, adding some personalization to the game so they can feel they are making a meme. Adding this feature will require some additional development time, but I believe it will make the game more fun.

Moreover, I'm thinking of making varying outcomes based on the number of potions collected. For instance, gathering ten potions could result in "adding a ton of something", whereas collecting just three potions might only "add a tiny bit of something." It is not a super big deal, but it will make the game close to the meme.


The thing I feel most helpful is the inventory script, it really helps a lot when I trying to deal with different items. I was kind of stuck by a bug, and it turns out that I changed a bit of the inventory search. ( I want it to return 0 instead of undefined when there is no such an item in the inventory), but I also add .inventory to the script. So the input should be InventorySearch(obj_player, itemType) instead of obj_player.inventory.

Next time I might consider using more script functions in the game. I think it's an easy way for me to code something repetitive. Other than that, I think it is a good idea to make sure some part of the code is perfectly working in different circumstances and then develop the next part. It is a terrible experience to figure out which tiny part has a problem in 100+ lines of code. Another thing could be to get some font not pre set to make the art looks better.








## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 4

*It is generally great, still need polish in art and gameplay*


**Scope** (How well do you feel you scoped your game?) - 5


*I like it*


**Overall** - Pass


*PAAAASSSSSSSSSSSSSSSSS!*
