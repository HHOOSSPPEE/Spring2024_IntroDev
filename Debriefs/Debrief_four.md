### **2024 Spring** - Sara D
### *Assignment 4* - Inventory watch
Link to game: ([itch link](https://sarad666.itch.io/collecting-watch))


## **Debrief**
  In the development of my game project, I decided to challenge myself of crafting my own inventory system. Opting against the conventional use of arrays in GameMaker Language (GML), I decided to implement a linked list. Given that GML is not inherently object-oriented, mimicking the functionality of linked lists as seen in Java presented a significant hurdle. The key of my challenge lay in emulating class implementation within GML, a feat readily achieved in Java through the use of constructors and Node classes.
	Luckily, I figured out a way that acts the same way as a constructor in a java class:the use of structs in GML. To implement my linked list, I developed two functions: item(), which acts as a node by returning a struct containing the item's data (such as the sprite index, and pointers to the next and previous items, paving the way for a doubly linked list), and LinkedList(), which serves as the linked list itself. This function initializes a linked_list_cons struct encapsulating all necessary variables and methods accessible via keywords. Completing the linked list's algorithms within this framework allowed for efficient addition and removal of nodes at both the list's start and end (achieving an O(1) time complexity), surpassing the efficiency of arrays in these operations. However, searching within the linked list maintains an O(n) complexity, posing a drawback compared to arrays. Despite the mixed efficiency, the exploration into struct-based class emulation in a non-object-oriented language like GML proved enlightening.
	I particularly enjoy the dynamic interaction within the game's inventory system, such as items snapping back to their original positions when removed from the list and the intuitive drag-and-drop functionality enabling item swapping. One oversight in my implementation was failing to account for interactions with empty inventory slots, which currently do not respond as intended. Given the opportunity to refine my work, I will address this bug. 
	Another feedback I’ve received from the playtest to enhance my game is the gameplay itself. As it stands, the project largely revolves around an inventory system focused on collecting watches, lacking substantive gameplay or objectives to make the collection engaging. One of our classmates, Hudson, suggested that in its current state, the game feels more like a demonstration of an inventory system rather than a fully-realized game, devoid of elements that typically make games enjoyable. If I get more time, I will definitely add more content, and maybe turn it into some action game where different colors of watches will have different effects. Adding more to the contents and making collecting watches more reasonable.


## **Self Evaluation**
*I think overal I did well and I've met all the criteria*

**Execution** (Did your project meet the theme you gave it?) - 5

*Yes, it's all about collecting watch*

**Scope** (How well do you feel you scoped your game?) - 4


*I think I scoped it okay, but yes I'm definitely lack in making it more complete and have actual gameplay*


**Overall** - Pass


*I think I did pretty well.*
