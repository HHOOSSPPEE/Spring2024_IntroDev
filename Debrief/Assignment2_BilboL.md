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

// remember to check the gamemaker's collision mask 

At first, I wanted to use a traditional scripted narrative for this narrative project. I came up with several ideas and tried to form scripts with them, but they were either too hard to present in a game with a small scope or not interesting enough. So, I used environmental narratives and camera movements to show this theme. And, rather than describing a specific story, I chose to blur the imagery of admiration into a reverence for a high mountain and a past person. To illustrate the admiration for mountains, my first thought was a view of looking up at them, which is an experience exclusively for 3d games. Then I came up with the idea: what if I simulate the 3d effect through this 2d engine?

The process of achieving this effect was simpler than I thought, the only thing to do was adjust the depth, coordinates, and scale of the items. However, when it came to the collision, things went out of control. Since I change the scale of items, their collision box change at the same time the character moves, which makes it impossible to use the place_meeting function to check collision. At this point, I was almost going to give up, but through discussing with classmates, I found a way to design my own collision check function. It’s really fulfilling.

Another aspect that I focused on is the camera movement. I want to imitate the effect of the game “Inside” in which the camera is constantly swaying. In the beginning, I didn't find anything to refer to nor did I know how to code this effect. But after our teaching assistant suggested I look up head bobbing, I realized that it’s in fact easy to achieve - it only needs some sin and cos function. Another important camera movement is the zoom at the end of the game. It intimates the cut-scene effect of smoothly zooming out and shifting the camera focus. 

Overall, the process of this project went quite smoothly. I didn’t find many problems in coding different mechanics. Instead, editing sprites and setting objects through the room took me a lot of time. 

Camera design is a very important but often overlooked aspect of both 2d and 3d games. If we use it well, the camera allows the player to better immerse in the game. Next time I may try more coding of camera movement. There are some games where the camera size changes with the player's position, which I think is also very interesting.

	
## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 2

Though I tried to form a script about the theme admire, I can not really figure out anything interesting. So, I didn't include a specific story.

**Scope** (How well do you feel you scoped your game?) - 5

Though the gameplay is short, I learned much about camera movemnet and gamemaker.



**Overall** - Pass

When I first thought of this idea of subverting the traditional top-down or horizontal platforming view, I didn't think I could achieve that. In the process of designing new visual logic, I learned a lot.