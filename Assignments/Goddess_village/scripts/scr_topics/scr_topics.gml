global.topics = {};

//these are all just tests

global.topics[$ "Example"] = [
	TEXT("I'm a photographer"),
	TEXT("I came here to study about different cultures"),
	TEXT("It's really interesting how there exist a village that put women above man that is the complete opposite of the mysoginy.")
	
];

global.topics[$ "Intro"] = [
	SPEAKER("ann", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("How are you? are you part of the villagers?"),
	SPEAKER("shasha", spr_sam, PORTRAIT_SIDE.RIGHT),
	TEXT("Oh yes my name is shasha, nice to meet you"),
	SPEAKER("ann", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("nice to meet you too, my name is ann but I'm here to visit the village."),
	TEXT("What do you feel about living here? how did you guys started to treating girls over boys? that's strange"),
	SPEAKER("shasha", spr_sam, PORTRAIT_SIDE.RIGHT),
	TEXT("Haha, it's a very long story from a long time ago, u sure u wanna here me out?")
];

global.topics[$ "Ask"] = [
	SPEAKER("ann", spr_player, PORTRAIT_SIDE.LEFT),
	CHOICE("What's your favorite food?", 
		OPTION("Egg", "Chose Egg"), 
		OPTION("Milk", "Chose Milk"))
];

global.topics[$ "Chose Egg"] = [
	TEXT("So you like eggs don't you?"), 
	SPEAKER("shasha", spr_sam, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes Maddam, you are absolutely correct, I love eggs!"),
	TEXT("What about you?"),
	GOTO("End FavFood")
];

global.topics[$ "Chose Milk"] = [
	TEXT("So you like milk don't you?"), 
	SPEAKER("shasha", spr_sam, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes Maddam, you are absolutely correct, I love milk!"),
	TEXT("What about you?"),
	GOTO("End FavFood")
];

global.topics[$ "End FavFood"] = [
	SPEAKER("ann", spr_player, PORTRAIT_SIDE.LEFT),
	TEXT("Can I live in your house?"), 
	SPEAKER("shasha", spr_sam, PORTRAIT_SIDE.RIGHT),
	TEXT("Sure!")
];