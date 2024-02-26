### **2023 Spring** - Luis Lopez
### *Assignment 1* - Environmental Game
Link to game: (https://machineart718.itch.io/environmental-storytelling-maze) test


## **Debrief**

For this project I’m decently satisfied with the way it came out. I think the spotlight effect, music choice, and slow movement all work together pretty well. These elements were used to help with the themes of secrets and crawling. While the player may not literally be crawling the slow pace kind of makes it feel like it and with the spotlight effect it makes it feel like you’re being sneaky and trying not to get caught by someone or something. Also, at the end the whole point of the maze was to gather food for a celebration that would contribute to the revelry theme. If you click on the npc, the music changes to a more joyous and celebratory theme and a textbox reveals thanking you for getting the food. As far making this project it wasn’t terribly difficult, just time consuming. I did have difficulties with two, maybe three things in particular. First off collisions between the tree borders and the player character was tedious to find a balance between. I tried working with both place meeting and place free however I realized since I am using a more physics based movement system (only because I like the way it feels more than just doing x += 3 or y -= 1, even though those tend to be less buggy) the momentum the player character would carry would allow them to move into the hitbox of the tress since the code just specifies the player character can simply not input when colliding. To resolve this as much as possible the friction variable on the player character is a higher value than I would typically use but I think it helps with conveying the crawling feeling a bit bitter. Despite its issues, the hit detection isn’t terribly buggy like in the Mario clone. As for the other issue I wanted to have the textbox at the end stay static on screen but even after switching which x and y value it would stick to whether that be the camera, player character, or npc it wouldn’t want to sit still. Stranger still, when I would put the textbox in the main maze room it would behave nearly perfectly. In the end I decided to have the textbox follow the camera and having it move around as you walk around makes it feel like all of the npc are thanking you. Lastly when the player start to move in a new direction it sometime gets stuck in the animation of the previous direction it was walking in. I couldn’t pin down what the issue was exactly but I think it has to do with the relatively slow walking speed since when I was tuning the balance of the variables, if they were too slow the animation would nearly not play at all or get stuck in a certain frame. I was able to create a basic list system for the food you collect and I would have liked to figure out how to do a sort of check using the npc that would change the dialogue and music based on how much food you did collect but I just couldn’t get it to work. I kept getting an undefined variable and I thought it was maybe because I wasn’t storing a value in a variable but that did not seem to fix the issue. 


## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution  4** (Did your project meet the theme you gave it?) - 5

*While there isn't literal crawling I think the slow paced movement and sneaking through a maze sensation conveys the feeling of crawling well.*


**Scope 4** (How well do you feel you scoped your game?) - 5


*I think the scope I had for the game worked out well, I got most of what I wanted into the game and what had to be left out didn't detract from the overll experience.*


**Overall Pass** - Pass/Fail


*Many of the components worked out well both individually as well as overall when working together. Nothing in particular is terribky buggy and the game functions as it should.*
