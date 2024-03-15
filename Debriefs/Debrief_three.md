
### **2024 Spring** - Sara D
### *Assignment 3* - Multiplayer Game
Link to game: ([itch link](https://sarad666.itch.io/math-class))


## **Debrief**
I end up making a game that’s basically learning to do math. Both players will need to collaborate with each other. 
Dragging the numbers and operation signs into making an equation, and get the score according to the equation length 
(if 5 boxes are filled add 5 points, if 7 boxes are filled add 7 points). Players collaborate to earn the highest score 
without repeating any previously made equations. Some things in the game that I liked the most is how I achieve the 
mathematical part and detecting what’s being put into the boxes and placing the boxes or pop them out. It was quite 
challenging actually for me to do the math because the way I detect which object is which, is by giving it a value in 
each object that it either returns a number that they are representing or the string symbol they are representing. For 
example, if it's obj_1, then the value that’s set in its create event will be value = 1; if it’s obj_plus, then the value 
will store a string “+”. By doing this, I will just have to see their returned value to do the calculation. However, I 
have to consider the cases when players put the numbers in the middle or if they put the equation so that there’s empty 
spots in between them, my program will need to still detect and calculate the equation without throwing a NullPointer error 
while looping through it. What I did is to create a for loop and loop through the array, and if the element is not null, 
then add it to a new array that’s used later for the actual calculation. For the calculation in my scr_do_math, I first 
checked some cases that could help me immediately stop running the rest of the code and simply return false, such as: does 
the equation have 0 or more than 1 equal sign? Is the equal sign in the beginning or at the very end. Then I started to 
think about how to do a mathematical calculation when each element is in an array? If I simply use a for loop to iterate 
through the function, I’m only getting one number, so what’s the sign it’s dealing with and what is the number after the 
sign that it’s calculating with, and what if the number is two digits or even three digits? More questions like this and 
designing this method is the most challenging and the most fun part of my project. I love designing challenging methods and 
or algorithms like this. I didn’t use any of the online resources this time to help me build the project, but the state 
machine we learned in class really helped, and I would love to repeat using these ideas of state machine, scripts, and 
global variables in my future projects.


## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 5

*Yes I think it fits the theme of math class*


**Scope** (How well do you feel you scoped your game?) - 4


*It's playable, and I will say overall should look fine, but there are definitely more things I could approve upon. such as there are some bugs that sometimes pop the wrong element out of the box, and or the players might stuck in the wall after changing the sprite during walking animation*


**Overall** - Pass


*Overall I think I meet the criteria and I've also learned a lot about using scripts and stuff so I'm pretty satisfied*
