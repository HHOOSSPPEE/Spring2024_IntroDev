### **2023 Spring** - Angelina X
### *Assignment 1* - Narrative Game
Link to game: (itch link)


## **Debrief**
For my game, I created a mini adventure game where a cat couple lives in candy-type of land. It begins with the cat wife asking the cat husband to find 20 pieces of candy in order for her to make a cake. Then, the cat husband proceeds to the next screen to collect candy through various types of obstacles: jumping across dangerous lakes, walking uphill, etc. If the cat husband successfully collects 20 or more pieces of candy, he is greeted with a giant cake at the end. However, if he fails to do so, the wife becomes disappointed and wants a divorce. 
In the game, I liked the trackers for health, lives, and candy. Whenever the cat would step into a spike on the ground, the health would go down visibly. Instead of numbers, there was a visual indication. Similarly, the same would happen when the cat lost all health, losing an entire life. Lastly, there was a tracker for how many candy the cat husband collected. One issue I had with this was that when exiting the room and coming back, all the candy regenerated. As a result, it was possible to collect 40+ candies and automatically reach the good ending. After some googling, I found something about “persistent objects” or “persistent rooms” that supposedly kept a room the same after a character left and came back. However, there was an issue with this. I wanted my character to stay at the same place when exiting and re-entering the room. But with “persistent” checked, it kept the cat in the same room because it kept colliding with the door object, which moved the cat to the next room. My solution was just to make the cat spawn at the beginning of the map. However, this also led to another issue. Because I wanted “persistent” to be on, the only way to reset the room was game_restart(), which made the cat respawn at the very beginning at the house. When the cat lost a life, I wanted it to respawn at the beginning of the main screen, not the very beginning screen. To solve this, I just made the cat wife’s text box change depending on the amount of lives left. 
Next project, I think I’ll have a better understanding of keeping track of numbers and data, which I have spent more time on in this project. Compared to the last project, I was able to implement a lot more mechanics. However, I felt like I was making my game step-by-step instead of having everything planned out. In fact, the secret room part of my project was just something random I decided to add, which led to all the issues of “persistent” and respawn points. So in my next project, I think I’ll plan everything out before starting it.



## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 5

*4 - I did implement the theme of “sweet” through the visuals and the purpose of the game. However, I think that it could have been implemented a bit more into the mechanics somehow, because replacing the candies and the theme with something else would be very easy.*


**Scope** (How well do you feel you scoped your game?) - 5


*4 - I think the mechanics and purpose of the game is relatively simple, but I did spend a lot of time on details. For example, the trackers, respawning, and textboxes.*


**Overall** - Pass/Fail


*Pass - I think I successfully incorporated the theme into a narrative game where the player controls a character to achieve his motive: collecting candy. There were different endings and dialogues for when player’s died and whether they succeeded or failed.*


