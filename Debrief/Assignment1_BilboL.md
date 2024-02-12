### **2024 Spring** - BilboL
### *Assignment 1* - Kirby Clone
Link to game: (itch link)


## **Debrief**
In at least 400 words, write a debrief. You must write a reflection on your assignment. In addition to specific requirements stated for the assignment, you must answer the following:

Though there are still features like Kirby swallowing enemies or enemies respawning when they are out of the players’view that haven't been done yet, I'm pretty satisfied with what I’ve done for this project.

I spend a lot of time adjusting the feel of jumping and floating. At first, I found that setting the ground check variable to an integer conflicted with the mechanics of high and low jumps. However, after redesigning my code, I managed to combine both mechanics. Now, in terms of the feel of movement, I think my clone isn’t much different from the original.

The animation when Kirby switches states is also tricky. I didn’t find the animation end event at the beginning and had a tough time trying to build my own animation end event, but it’s still worthy, as I learned not to rely on the game engine.

During this project, I tried to make my code as neat and organized as possible, and I found the state machine to be very helpful. However, there are cases where I’m not sure what to do. Some code applies to one or two states but not to others. If I write these codes to multiple states at the same time, it makes the code repetitive, while writing code outside of the state machine makes the code even more unreadable because I need to set a lot of booleans to limit the situations. Next time, I will keep working on the state machine, try to plan ahead more and use script functions to make my code cleaner.

## **Self Evaluation**
In addition to the debrief, the Self Evaluation is an opportunity for you to talk about your work. You must rate each aspect of your project as a 1 - 5 or Pass/Fail (where appropriate), as well as write a short 1-2 sentence elaboration to justify your score, in the following areas:


**Execution** (Did your project meet the theme you gave it?) - 4

The movement is close to the original. Didn't do the suck power.


**Scope** (How well do you feel you scoped your game?) - 4

It is a clone so I do as much as I can. But it turns out that it's a bit more harder than I anticipate

**Overall** - Pass

I'm satisfied with the game feel.
