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

For this final assignment, I was polishing the multiplayer hunting game. My initial plan was to create a richer ecosystem for the game, create some plants for the animals to eat, and let the player hunt in a realistic environment. So, I tried generating grasses randomly in the environment and letting the prey look for grass when they are hungry. However, that makes the ecosystem of the prey seem inconspicuous. When animals walk through the grass and eat it, the player can't tell that there was originally grass in that area. So, I started to generate grass in a few closed areas, forming several lawns. In that way, when prey comes and eats the grass, it is a little bit more obvious. However, I realized later that to make the ecosystem more obvious, I had to give prey more animation. But I was too afraid to deal with animations in Gamemaker at that moment, after facing so many bugs with the player's animation.

Originally, the hunter’s arrow would be directed at the prey automatically, but that is a bit dull. To make the game more playable, I want to make players control the arrow by themselves. So I changed the shooting system from click to shoot to hold to shoot, and the longer you hold the further you shoot. That is not the most tricky part, the animation is. Since I changed the shooting logic, the animation logic should change as well. When the player holds the trigger, the animation should stop until the player releases it. The arrow should be shot immediately after releasing the button, but the animation should keep going. And if the player holds the button again before the animation ends... You see how tricky it is. I didn’t remember how I fixed it, but it definitely takes a lot of time.

The feedback from playtesting says it is fun to play both players at the same time but not when playing only one. So, I decided to combine both characters, the hunter must be kept, but the dog seems a little bit useless, especially since the prey will gather around the lawn, the sniffing mechanics are not useful at all. So I changed the dog to a drone that will automatically look for prey and give the player a wider view. I removed the dog’s code when changing the dog to a drone, but as the final critic commented, it might be better to have the drone drag the prey. The other comment was also very helpful. Because I have the prey spawn outside of the player's view, it's easy to cause the prey to pile up when the player approaches the edge and the prey spawns on the other side. This could probably be optimized if I add an ecosystem between prey.


	
## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - ?

It's polishing so I guess there is no theme. I did not have the word relax in mind while I polish it. Don't know if it's a problem.

**Scope** (How well do you feel you scoped your game?) - 5

Though I changed a lot, it seems not very different from the beginning. But I think the work load is just fine.



**Overall** - Pass

I can finally move on to Unity, animating in gamemaker is a torture.