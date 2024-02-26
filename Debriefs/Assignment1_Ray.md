### **2024 Spring** - Ray MaInitial
### *Assignment 1* - Clone Project
Link to game: (itch link)


## **Debrief**
In this assignment of recreating Mario, I think I had some fun with the program in my final output, but the program is not perfect. I feel very satisfied when making tilesets and animations, filling up the squares one by one. 

At the same time, I also feel comfortable switching between rooms of the death mechanism. But at the same time, I felt inadequate in some parts that I hadn’t dealt with. The first thing that bore the brunt was Mario's form switching. Because there was a part at the bottom of the pipe in game 1-1, I chose to make different rooms. Therefore, Mario's power-up form after eating mushrooms cannot be well retained in different rooms. I guess adding a boolean to indicate whether there is enhancement may be more convenient than switching sprites after a place meeting. (Update: I tried to use a boolean represent the status, but still figuring how to keep it while changing room)

Also, the way of beating the enemy can be better since currently, we are just using place meeting with the condition to see if the Y axis equals 0, it does not require a precise jump of Mario to beat the enemy. I think it might be able to be solved in a better way after I learned to use the hitbox.

The third thing I think I can do better is the viewport thing. Just like previously mentioned I chose to use a different room to represent the hidden place under the pipe, the camera, and the points UI also needs to change the Y-axis. I tried some work but it does not look the same as the normal upper place, so I think I could work better on consistency.

Overall I think I can do a better job, but may just require more effort and knowledge of a more efficient way to do it, as well as more practice.

