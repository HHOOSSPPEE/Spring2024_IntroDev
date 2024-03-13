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

When I got the themes, I scanned over all the assignments. Though I have no idea about other themes, the first assignment that came to mind for the theme Relax was this multiplayer one. Most multiplayer games on the same screen are battle games, so what about making a relaxing cooperative game? I have several ideas like farming, fishing, etc. But finally, I chose to make a hunting game.

Of course, it’s a hard one to make, though it seems not very complicated. However, it is a good practice. The hunter can use a bow to shoot arrows; the dog can sniff to know if there is any prey around; drag the prey to slow them; and they both can dash and hide to avoid being noticed by prey.

The first difficulty is the camera movement. The camera needs to keep track of both characters while they move around the map. That part is simple, but if players are too far away, the camera should not follow. Still, I don’t want the camera to stop players from moving. I want them to freely move out of the screen and notice that “oop, I’m too far from my teammate” and then come back. So, I rewrote the camera so that if one player is out of the screen, the camera will slightly follow the other player until they are too far away. The outcome is smooth.

Then it comes to the archery part. Originally, I thought it was just a high school physics problem and there would not be any difficulties. However, I made some mistakes in the variable setting. I tried to calculate the speed of the arrow using a bunch of given values. It took me so long to notice that I actually forgot everything about high school physics and my formulas were actually wrong. Besides, combining the code with the animation of shooting is hard. The arrow should be shot after a specific frame of the animation. Though I used the animation-end event to control that, it became very messy.

The other part was not really time-consuming. For time management reasons, I didn't end up giving the hunters a very intelligent AI, so they may try to move out of the room and get stuck at the border of the room. But except for that, it’s all fine. The coding of mechanics is not hard. But as the scale goes up, it becomes harder to debug and manage the codes. I tried using most of my code in scripts and using a game manager to keep track of the player's and prey’s state. However, at the end of this project, I still saw some parts where I could use one function to fulfill multiple mechanics (like searching for prey and searching for players) but I didn’t.

	
## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 4

Hunting might not be related to the theme relax but I think the atmosphere is.

**Scope** (How well do you feel you scoped your game?) - 4

I think I might spend too much time for a two-week project. But I feel obligated to finish the mechanic designs.



**Overall** - Pass

I like my idea and the process is a great exercise. I think it works, except the visual is crude.