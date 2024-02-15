### **2023 Spring** - FirstName LastInitial
### *Assignment 0* - Assignment Name
Link to game: (itch link)


## **Debrief**
In at least 400 words, write a debrief. You must write a reflection on your assignment. In addition to specific requirements stated for the assignment, you must answer the following:

- What did you end up making?
- Which of the game’s aspects did you like about this project?
- What resources and/or comments were most helpful to you?
- What will you repeat or do differently next time?

Please do not answer these questions individually, but include it in a paragraph format.

The project was harder than I initially thought. I worked throughout the weekend, but time was still a bit tight. Usually after making some changes to fix a specific issue, some other weird things happen. Overall I’m satisfied, but improvements could be made.

The part I like the most is the enemies, especially the mushroom one. I edited a lot on numbers to make them achieve the movements I wanted. I also like the part about enemy spawners. The method I chose is to check if the spawner is in the player’s current camera view - if so, then spawn the enemy at a position that is a bit farther. There’s also a timer so that enemies won’t emerge too quickly. However, I’m still thinking about how to make it smoother: if the player stays in a place near the spawner and waits until the timer is finished, the enemies may be spawned in the middle of the screen. (But I set the timer to be long enough so that this situation will occur only if the player stands still in the same position for quite a long time.)

One of the primary problems encountered was the difficulty in smoothly transitioning between animations. For instance, when the player moved from a jumping to a floating animation, an awkward gap would sometimes appear, disrupting the game's visual flow. I tried various methods like changing the x/y position of the player but this resulted in many other issues - and my final choice is to change the origin of the sprites from the top-left corner to the top-middle corner (Seemed to be fine, but not sure if this would lead to other problems that I didn’t notice).

Besides, transitioning between animations at different stages is challenging. The hardest part was changing between the floating Kirby and other normal animations because the sprite sizes weren’t the same. For example, when approaching the wall, sometimes the player may be stuck inside and the animation will be chaotic. Similar problems exist when the player approaches the floor. I implemented some boolean functions and if statements to check the status and the final decision was to let the player change y positions at the moment of jumping. There should be some simpler ways to fix this; still trying to figure it out.

Some helpful resources I used were YouTube videos and the Gamemaker manual online. I also got some help from my friends. These all gave me lots of insights. After finishing the basic coding, I spent one whole day dealing with the bugs. Next time I will try to begin doing the project earlier and look for some external help.


## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 5

*Write your elaboration within the asterixis*


**Scope** (How well do you feel you scoped your game?) - 5


*Write your elaboration within the asterixis*


**Overall** - Pass/Fail


*Write your elaboration within the asterixis*
