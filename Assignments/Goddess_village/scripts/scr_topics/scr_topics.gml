global.topics = {};

//intro
global.topics[$ "Bus"] = [
	ITEM(spr_player, 550, 100),
	TEXT("Your name is Jess."),
	TEXT("You are a documentary photographer."),
	TEXT("You are really interested in diverse cultures and anecdotes."),
	TEXT("You've heard that there exists a small village by this mountain far away from the city."),
	TEXT("Unlike other remote villages, this one has always promoted the idea of valuing females over males, at least that's what's being told to the outside world."),
	TEXT("Driven by a strong curiosity about this unique ideology, you decide to go alone with a camera to explore and find out more."),
	TEXT("Before setting out, you've done a lot of research."),
	TEXT("Many enthusiasts with the same interest have visited this place, attempting to capture the village."),
	TEXT("But most were unable to find the entrance to the village and had to return without getting more information."),
	TEXT("Furthermore, you've heard that in this village, they hold a kind of ceremonial event to worship their goddess."),
	TEXT("You hope to encounter this event during your visit and wish to have the opportunity to record it."),
	RMITEM(spr_player),
	BG(spr_just_off_bus),
	TEXT("Finally, after countless hours, you, exhaustedly, have arrived at your destination and gotten off the bus."),
	TEXT("You walk along the road and until you see the forest in front of you."),
	TEXT("You know the village is at somewhere after you pass through the forest..."),
	GOTO("Which Direction")
];

//选项
global.topics[$ "Which Direction"] = [
	BG(spr_intro_forrest),
	CHOICE("Which direction to go...?",
		OPTION("Go right", "Chose Right"),
		OPTION("Go left", "Chose Left1"))
];

global.topics[$ "Chose Left1"] = [
	BG(spr_forrest_further),
	CHOICE("seems like on the right track",
		OPTION("Go right", "Chose Right"),
		OPTION("Go left", "Chose Left2"))
];

global.topics[$ "Chose Left2"] = [
	BG(spr_forrest_close),
	CHOICE("almost there",
		OPTION("Go right", "Chose Arrived"),
		OPTION("Go left", "Wrong Direction"))
];

global.topics[$ "Wrong Direction"] = [
	BG(spr_forrest_rand),
	CHOICE("oof I'm at wrong place again",
		OPTION("Go right", "Which Direction"),
		OPTION("Go left", "Chose Left1"))
];

global.topics[$ "Chose Right"] = [
	BG(spr_forrest_right),
	CHOICE("It's not here...",
		OPTION("Go right", "Which Direction"),
		OPTION("Go left", "Chose Left1"))
];

global.topics[$ "Chose Arrived"] = [
	BG(spr_entrance_village),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Holy..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Oh my god! Is that the entrance to the village?"),
	SPEAKER("", noone, noone),
	TEXT("you stumbled upon the entrance to the village that many others could not find."),
	TEXT("You felt a surge of excitement, convinced that you would definitely be able to produce a documentary with substantial content."),
	GOTO("See the statue")
];

global.topics[$ "See the statue"] = [
	BG(spr_village_main),
	TEXT("As soon as you entered the village with your camera, you were captivated by a sculpture in front of you."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Is this... the goddess? It's really... truly beautiful..."),
	SPEAKER("", noone, noone),
	TEXT("Just as you were deeply absorbed in admiration, someone hurriedly interrupted you."),
	SPEAKER("??", noone, noone),
	TEXT("Hey! How dare you!"),
	SPEAKER("??", noone, noone),
	TEXT("you little brat, looking around so carelessly? This sculpture is not meant to be seen by just anyone."),
	SPEAKER("", noone, noone),
	TEXT("You see this old lady quickly approaches you with an angry expression."),
	ITEM(spr_wangpo, 600, 100),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Oh...I'm...I'm sorry."),
	TEXT("I'm not trying to offend anyone by any means."),
	TEXT("My name is Jess, and I'm a photographer who's really interested in this beautiful village's culture."),
	TEXT("I've heard that there's a Goddess in this village that anyone is worshiping. Is that this statue?"),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Ahhh I see."),
	TEXT("So you are one of those who's here to see our Goddess aren't you?"),
	TEXT("Just call me Wangpo. Everyone in this village calls me that."),
	TEXT("Ahhh, our village is indeed...a good place to live."),
	SPEAKER("", noone, noone),
	TEXT("Surprised by how quickly this woman flipped from very angry to very calm, you still answered politely."),
	GOTO("Old lady yells")
];

global.topics[$ "Old lady yells"] = [
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Yes! Nice to meet you Mrs.Wangpo."),
	TEXT("Have the villagers ever seen the goddess? Why does she have an extra right hand?"),
	SPEAKER("", noone, noone),
	TEXT("But upon hearing this, Wangpo's brow furrowed again, and she pursed her lips."),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("The goddess's hands, you see, two are for blessing the women of our village, and the remaining one is for giving alms to the men."),
	TEXT("Every so often, a flower grows from the palm of that solitary hand. It's merely a reward for those smelly men."),
	SPEAKER("", noone, noone),
	TEXT("You thought to yourself that this really matches what you had heard. It's surprising to find that even in their faith, men are considered a lower class than women, which is quite rare in society overall."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I've sure heard that this village is also called the heaven for women, in which we value females over males."),
	TEXT("Is that true?"),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Hahah!"),
	TEXT("Is that how they describe us outside?"),
	TEXT("I guess so? Our husbands love us, our boys obey us, and our girls were raised divinely."),
	TEXT("If that's what is called heaven, I guess so."),
	SPEAKER("", noone, noone),
	TEXT("You nodded, becoming increasingly curious about the lifestyle within the village."),
	TEXT("However, for some reason, you couldn't shake off a feeling that something was amiss."),
	TEXT("Perhaps it was just your imagination running wild."),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Jess, my poor girl, you must have been so tired now aren't you?"),
	TEXT("It must be a long and exhausting trip isn't it?"),
	CHOICE("It seems that this old lady Wangpo is pretty nice and genuine. Since there's no place in this village that takes visitors, should you ask her to take you in?",
		OPTION("Yes!", "Chose Wangpo"),
		OPTION("No...", "Chose village head"))
];

global.topics[$ "Chose Wangpo"] = [
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("A little bit..."),
	TEXT("Oh and Mrs. Wangpo, may I also ask if you are willing to take me in for a while as I'm visiting?"),
	TEXT("I know I'm asking a lot but...I don't see any inn or hotel here so I don't really have a place to stay. If I may..."),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Of course! Of course... but..."),
	SPEAKER("", noone, noone),
	TEXT("You see Wangpo hesitant a little bit..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Oh no worries!"),
	TEXT("Thank you Mrs.Wangpo, I'm just asking to see if you are available, and if it bothers you, just forget what I've asked."),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Nonononono, I didn't mean it Jess."),
	TEXT("It's...it's just that we are not allowed to just take visitors home without permission."),
	GOTO("End of intro room")
];

global.topics[$ "Chose village head"] = [
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Thank you Mrs.Wangpo, I'm good."),
	TEXT("Though I do want to know where I could find the head of this village?"),
	TEXT("I realized that there's not any inn or any hotels in this village. So I'm wondering if the head of the village might know if any houses are empty..."),
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Oh yes, indeed you should go find the village chief."),
	GOTO("End of intro room")
];

global.topics[$ "End of intro room"] = [
	SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("All visitors have to go see the village chief. And it must be the head that decides who are the houses that could take you."),
	TEXT("And then you could choose from one of the families the chief pointed."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I see! Thank you so much Mrs.Wangpo. I will go visit the village chief right now!"),
	RMITEM(spr_wangpo),
	GOTO("On the way to Village")
];


//meet the village head
global.topics[$ "On the way to Village"] = [
	BG(spr_walking_to_vh),
	SPEAKER("", noone, noone),
	TEXT("You are walking slowly towards the village chief's house."),
	TEXT("As you are walking towards it, your grab the camera and started to take photos and videos for later use."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Awwww, look at those cute little girls. They are enjoying their life so much."),
	SPEAKER("", noone, noone),
	TEXT("On your right side, there are several of girls, about the age of 12, sitting by the rivers."),
	TEXT("You could hear them chatting and laughing"),
	TEXT("You see some girls are reading books, some are singing and dancing, and some are playing with the mud."),
	TEXT("And on your left side are young boys and man working in the field, growing food."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Huh, they actually do value women above men!"),
	TEXT("No girls are working, and they are all free to do whatever they want!"),
	TEXT("Can't imagine if I was like this when I was little."),
	SPEAKER("", noone, noone),
	TEXT("You've passed a lot of houses on the way to the village head's house."),
	TEXT("In almost every houses, there sits a lady. Some are a bit younger but most are old."),
	TEXT("You are not quite sure how old they are so you go up and ask them."),
	TEXT("Most tells you that they are 50ish almost 60, and only a few that are about 30."),
	TEXT("Furthermore, all of them look older than they should be."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hmmm, I guess ladies here really don't work that much."),
	TEXT("But why...where are all the girls from the ages 15 - 30?"),
	TEXT("I see men in all ages, working...but what the about girls?"),
	TEXT("Maybe that will be a good question to ask the village chief later for the interview."),
	GOTO("Let me see vh")
];

global.topics[$ "Let me see vh"] = [
	BG(spr_Ale_hs_o),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("So this is the village chief's house."),
	TEXT("Let me knock on the door."),
	SPEAKER("", noone, noone),
	TEXT("Knock knock"),
	SPEAKER("??", noone, noone),
	TEXT("Who is it?"),
	SPEAKER("", noone, noone),
	TEXT("An old male voice coming from inside of the house. Sounded with a bit of frustration."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! I'm a visitor to the village. May I talk to the chief of the village please?"),
	SPEAKER("??", noone, noone),
	TEXT("Oh...oh okay, come in first please"),
	GOTO("First Met Vh")
];

global.topics[$ "First Met Vh"] = [
	BG(spr_Ale_living),
	ITEM(spr_Ale, 550, 110),
	TEXT("The village chief warmly welcomed you."),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Hello, I'm Ale, the village chief you are looking for. How can I help you today?"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello, Mr. Ale, I'm Jess, I'm a documentary filmmaker from afar, especially interested in your village's unique culture and gender traditions."),
	TEXT("And I'm also wondering if there's any where I can stay while I'm here?"),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I see I see, just call me Ale is fine."),
	TEXT("Welcome to our village Jess. Let me call my little brother to see if he's available."),
	TEXT("While waiting for him, if you don't mind, follow me."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Okay! Thank you so much Ale."),
	RMITEM(spr_Ale),
	BG(spr_Ale_visit_rm),
	SPEAKER("", noone, noone),
	TEXT("Ale took you to a cozy greeting room."),
	ITEM(spr_Ale, 550, 110),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Please, take a seat."),
	SPEAKER("", noone, noone),
	TEXT("You sit down on the sofa."),
	TEXT("Ale grabs you a bottle of water then sits on the chair in front of you."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("So, I would like to interview you. Do you mind if I record?"),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Of course, go ahead"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("So I've mentioned that I'm interested in your village's unique culture and gender traditions."),
	TEXT("Could you tell me more?"),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Historically, our village went through a very tough period, but thankfully, with the protection of our goddess, we found a way to live in harmony."),
	TEXT("Now, we value women highly, believing this to be the guidance of our goddess."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("That sounds truly special. How do these traditions affect the daily lives of the villagers?"),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("We cherish our women greatly, providing them with the best education and care from a young age."),
	TEXT("The girls are the future of our community and receive protection and respect at every stage of their growth."),
	TEXT("Haha, let me take you to my granddaughter's room, so you could take a look at how I treated my granddaughter as princess."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Sure! that will be great."),
	RMITEM(spr_Ale),
	BG(spr_Ale_living),
	SPEAKER("", noone, noone),
	TEXT("(Walking...) ta ta ta"),
	BG(spr_Ale_girl_rm),
	TEXT("Wow, what a cute little room!"),
	ITEM(spr_Ale, 550, 110),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Haha, right?"),
	TEXT("We really try to give our girl the best we have."),
	RMITEM(spr_Ale),
	BG(spr_Ale_living),
	SPEAKER("", noone, noone),
	TEXT("Then both of you walk back to the greeting room."),
	BG(spr_Ale_visit_rm),
	ITEM(spr_Ale, 550, 110),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("What about the men in the village?"),
	SPEAKER("", noone, noone),
	TEXT("Ale waves his hand dismissively."),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("The men here, well, they're less valuable than our women. Our boys are raised rough."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("But I've heard there are special traditions for the men too?"),
	SPEAKER("", noone, noone),
	TEXT("Ale hesitates slightly"),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes, our men also have their roles."),
	TEXT("However, due to an ancient curse, our men have shorter lifespans."),
	TEXT("That's why we place more importance on women. They are key to sustaining our community's vitality."),
	GOTO("Brayd Came In")
]

global.topics[$ "Brayd Came In"] = [
	SPEAKER("", noone, noone),
	TEXT("(Knock Knock)"),
	RMITEM(spr_Ale),
	ITEM(spr_Ale, 650, 110),
	TEXT("A man walked in"),
	ITEM(spr_Brayd, 150, 110),
	SPEAKER("??", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Hello"),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Hi Brayd! You are finally here."),
	TEXT("This is Jess, a visitor to our village."),
	TEXT("And this is Brayd, my younger brother who is available to take you for the time you are staying here."),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Hi Jess, Welcome!"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! Thank you for taking me in."),
	SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Oh and since Brayd you are here, do you mind taking Jess around the village?"),
	TEXT("She's a great photographer, and this will help her better understand our cultures and traditions."),
	TEXT("Which will also help to promote our village hahaha."),
	RMITEM(spr_Brayd),
	RMITEM(spr_Ale),
	GOTO("For a Walk")
]

global.topics[$ "For a Walk"] = [
	BG(spr_Ale_hs_o),
	ITEM(spr_Brayd, 550, 110),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I still have work to do, but, we could walk around for a little bit."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Okay!"),
	BG(spr_out_vh),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Our village is quite big."),
	TEXT("I could probably only show you a few places, but rest you could explore on your own."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Yeah! That sounds great to me."),
	BG(spr_maddam_house),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Wow, this is a beautiful house."),
	TEXT("Who lives in there?"),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Ugh, I think...a lady lives in there?"),
	TEXT("With her daughter and a husband? Or something, I don't quite remember."),
	TEXT("I don't know them too well, but I know they are all nice people."),
	BG(spr_school),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("This is the only school in our village."),
	TEXT("All the children in our village come here to study."),
	TEXT("Don't be fooled by the fact that we have just one school; it offers education from elementary through to high school."),
	BG(spr_tempo),
	TEXT("This is the most sacred and important place in our village, our Goddess Temple."),
	TEXT("Normally, we are not allowed to enter."),
	TEXT("Inside, there are newborn infants, holy maidens, and a priest."),
	TEXT("The priest usually doesn't see anyone, but if you need to interview him, you might try knocking on the door to see if he's there. However, he might not respond to you."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Holy maidens? Infants? And a Priest?"),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Ha, it's just our tradition."),
	TEXT("Here, our newborn girls are taken to the temple to be raised until they are two years old. This way, they are blessed by the gods for their entire lives."),
	TEXT("Women here, from ages 14 to 30, become holy maidens."),
	TEXT("They choose to spend their time in the temple enjoying a life free from work and study, just praying to the gods and having fun."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("But the temple seems so small..."),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("That's just what you see. Behind it, it's quite large."),
	TEXT("Our Goddess Festival is held here, and all the men from the village gather at this place."),
	TEXT("There's a large courtyard inside that can fit all the men of our village."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I see... But about the holy maidens..."),
	SPEAKER("", noone, noone),
	TEXT("Brayd interrupts you somewhat impatiently."),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Alright, alright, you'll find out the rest later."),
	TEXT("The Goddess Festival is coming up soon, and you've arrived just in time to witness it."),
	SPEAKER("", noone, noone),
	TEXT("You suppress the strange feeling inside."),
	TEXT("Your intuition tells you that you might be missing some crucial information, but you're not sure what it is exactly."),
	BG(spr_village_main),
	SPEAKER("", noone, noone),
	TEXT("Then both of you go back to the main entrance of the village, where the statue stands"),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("It's getting late and I still have to go to work."),
	TEXT("Sorry, but that's all I can show you for now."),
	TEXT("However, feel free to look around."),
	TEXT("Do you have any other questions?"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I just heard from the chief that there's an ancient curse here. Can you tell me more?"),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("That's an old story."),
	TEXT("Legend has it that due to past misdeeds, divine wrath was brought down upon our men."),
	TEXT("Each generation's suffering is punishment for our ancestors' actions."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("How do you alleviate this suffering?"),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Only the ceremonies in the temple can provide temporary relief. However, those flowers are the true redemption."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I'm sorry to hear this..."),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Okay, I really have to go now, sorry."),
	TEXT("Just make sure to come back home before it gets dark."),
	TEXT("See you later."),
	RMITEM(spr_Brayd),
	GOTO("Explore village")
]

global.topics[$ "Explore village"] = [
	SPEAKER("", noone, noone),
	TEXT("Now, you're on your own."),
	TEXT("You decide to revisit some of the places you've been to see if you can gather more information."),
	CHOICE("Where do you want to go?",
		OPTION("Lady's house", "Visit Lady house"),
		OPTION("The temple", "Visit The Priest"))
]

global.topics[$ "Visit Lady house"] = [
	BG(spr_maddam_house),
	SPEAKER("", noone, noone),
	TEXT("You go back to the house where there lives a lady and her family."),
	TEXT("You want to see if you could interview some local villagers, and that lady seems to be a good person to start with."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! Anyone home?"),
	SPEAKER("", noone, noone),
	TEXT("You then waited a little bit, and a lady shows up."),
	ITEM(spr_lady, 550, 110),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("What? Anything I can help with?"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you if that's okay?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("ummm, sure I guess."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Will you mind if I record?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Sure..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I heard that you have a daughter, is she home?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("...She's not. My daughter just became the holy maiden. She's at the temple right now."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("You don't sound happy. May I ask why?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("As a mother, I am both proud and in pain."),
	TEXT("Proud that she was chosen, but pained because she was taken away from us at a young age, and we hardly see her."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Relatable... IF you could see change, what would you wish for?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I wish all children could have the freedom to choose, regardless of gender."),
	TEXT("Still, we owe a lot to Teacher Liu, who taught us to adapt and helped us find happiness."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Teacher Liu?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes, she's our teacher here. You could probably still find her at school now. She could give you more information than I do."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I will, thank you so much for your time ma'am."),
	RMITEM(spr_lady),
	CHOICE("Now where?",
		OPTION("Visit Teacher Liu","To School"),
		OPTION("The temple", "Priest With School Open"))
]

global.topics[$ "To School"] = [
	BG(spr_school),
	SPEAKER("", noone, noone),
	TEXT("Now you have arrived at school."),
	BG(spr_school_classroom),
	TEXT("After asking around, you finally find the classroom where Teacher Liu will be at."),
	ITEM(spr_liu, 550, 110),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! Are you Mrs. Liu?"),
	SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes, what do you need?"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you. Are you fine with recording?"),
	SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yeah, that's fine."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Are the girls chosen as holy maidens truly happy?"),
	SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("We all hope they are happy, as their happiness directly affects the future of our village."),
	TEXT("But happiness is multifaceted, and they lose the freedom to choose their lives."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Do they understand their fate? Or have you taught them about it?"),
	TEXT("We try to instill belief in them from a young age, making them believe serving the god is an honor."),
	SPEAKER("", noone, noone),
	TEXT("You still have a lot more to ask, but Teacher Liu refuses to answer any and kindly ask you out."),
	TEXT("You know that you won't get anything from her now, so you go to the temple."),
	RMITEM(spr_liu),
	CHOICE("Go back to the temple", 
		OPTION("The temple", "To Temple Last"),
		OPTION("Don't chose this, there's bug", "To Temple Last"))
]


global.topics[$ "To Temple Last"] = [
	BG(spr_tempo),
	TEXT("Back in front of the temple, your curiosity about the village's secrets deepens."),
	TEXT("Eager to understand what the ceremony entails, you knock on the door."),
	TEXT("After a few minute, a man opens the door."),
	ITEM(spr_shaman, 550, 110),
	SPEAKER("", noone, noone),
	TEXT("This man is probably the priest Brayd mentioned before..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you. Are you fine with recording?"),
	SPEAKER("", noone, noone),
	TEXT("... ... ..."),
	TEXT("The priest stares at you silently"),
	TEXT("And finally, before you freaks out and decide to leave, the priest talks."),
	SPEAKER("the priest??", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I may answer some questions, but no recordings allowed."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Oh, okay, that's fine. Thank you."),
	TEXT("So as a priest who, I assume, has participated in many ceremonies, what is the true purpose of these rituals?"),
	SPEAKER("The Shaman", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("First of all, I'm a shaman, not a priest. We don't have any priests."),
	TEXT("I'm just healing the village and helping out with the ceremonies."),
	TEXT("I organize the ceremony, I work in the temple, but I am no priest. I'm a doctor if you are more willing to call me that."),
	TEXT("We show our loyalty and reverence to the divine through these ceremonies, seeking their forgiveness and protection."),
	TEXT("That's all I could tell you."),
	TEXT("See you, my lady."),
	RMITEM(spr_shaman),
	SPEAKER("", noone, noone),
	TEXT("Without giving you any more chance to ask other questions, he turn around and shut the door close."),
	TEXT("Realizing your impatience will not get you far, you decide to calm down and head back to Brayd's house to rest for the night."),
	CHOICE("Go back to Brayd's house",
		OPTION("Back to Brayd's house", "Back Home"),
		OPTION("Don't chose this, there's bug", "Back Home"))
]

global.topics[$ "Visit The Priest"] = [
	BG(spr_tempo),
	TEXT("Back in front of the temple, your curiosity about the village's secrets deepens."),
	TEXT("Eager to understand what the ceremony entails, you knock on the door."),
	TEXT("After a few minute, a man opens the door."),
	ITEM(spr_shaman, 550, 110),
	SPEAKER("", noone, noone),
	TEXT("This man is probably the priest Brayd mentioned before..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you. Are you fine with recording?"),
	SPEAKER("", noone, noone),
	TEXT("... ... ..."),
	TEXT("The priest stares at you silently"),
	TEXT("And finally, before you freaks out and decide to leave, the priest talks."),
	SPEAKER("the priest??", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I may answer some questions, but no recordings allowed."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Oh, okay, that's fine. Thank you."),
	TEXT("So as a priest who, I assume, has participated in many ceremonies, what is the true purpose of these rituals?"),
	SPEAKER("The Shaman", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("First of all, I'm a shaman, not a priest. We don't have any priests."),
	TEXT("I'm just healing the village and helping out with the ceremonies."),
	TEXT("I organize the ceremony, I work in the temple, but I am no priest. I'm a doctor if you are more willing to call me that."),
	TEXT("We show our loyalty and reverence to the divine through these ceremonies, seeking their forgiveness and protection."),
	TEXT("That's all I could tell you."),
	TEXT("See you, my lady."),
	RMITEM(spr_shaman),
	SPEAKER("", noone, noone),
	TEXT("Without giving you any more chance to ask other questions, he turn around and shut the door close."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I guess I should probably go see the house with a lady living there."),
	CHOICE("Go to the lady's house", 
		OPTION("The lady's house", "Visit Lady 2"),
		OPTION("Don't chose this, there's bug", "Visit Lady 2"))
]

global.topics[$ "Visit Lady 2"] = [
BG(spr_maddam_house),
	SPEAKER("", noone, noone),
	TEXT("You go back to the house where there lives a lady and her family."),
	TEXT("You want to see if you could interview some local villagers, and that lady seems to be a good person to start with."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! Anyone home?"),
	SPEAKER("", noone, noone),
	TEXT("You then waited a little bit, and a lady shows up."),
	ITEM(spr_lady, 550, 110),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("What? Anything I can help with?"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you if that's okay?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("ummm, sure I guess."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Will you mind if I record?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Sure..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I heard that you have a daughter, is she home?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("...She's not. My daughter just became the holy maiden. She's at the temple right now."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("You don't sound happy. May I ask why?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("As a mother, I am both proud and in pain."),
	TEXT("Proud that she was chosen, but pained because she was taken away from us at a young age, and we hardly see her."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Relatable... IF you could see change, what would you wish for?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I wish all children could have the freedom to choose, regardless of gender."),
	TEXT("Still, we owe a lot to Teacher Liu, who taught us to adapt and helped us find happiness."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Teacher Liu?"),
	SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes, she's our teacher here. You could probably still find her at school now. She could give you more information than I do."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I will, thank you so much for your time ma'am."),
	RMITEM(spr_lady),
	CHOICE("Go to school",
		OPTION("Visit Teacher Liu","To School last"),
		OPTION("Don't chose this, there's bug","To School last"))
]

global.topics[$ "To School last"] = [
	BG(spr_school),
	SPEAKER("", noone, noone),
	TEXT("Now you have arrived at school."),
	BG(spr_school_classroom),
	TEXT("After asking around, you finally find the classroom where Teacher Liu will be at."),
	ITEM(spr_liu, 550, 110),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello! Are you Mrs. Liu?"),
	SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yes, what do you need?"),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you. Are you fine with recording?"),
	SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Yeah, that's fine."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Are the girls chosen as holy maidens truly happy?"),
	SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("We all hope they are happy, as their happiness directly affects the future of our village."),
	TEXT("But happiness is multifaceted, and they lose the freedom to choose their lives."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Do they understand their fate? Or have you taught them about it?"),
	TEXT("We try to instill belief in them from a young age, making them believe serving the god is an honor."),
	SPEAKER("", noone, noone),
	TEXT("You still have a lot more to ask, but Teacher Liu refuses to answer any and kindly ask you out."),
	TEXT("Realizing your impatience will not get you far, you decide to calm down and head back to Brayd's house to rest for the night."),
	RMITEM(spr_liu),
	CHOICE("Go back to Brayd's house", 
		OPTION("Brayd's house", "Back Home"),
		OPTION("Don't chose this, there's bug", "Back Home"))
]

global.topics[$ "Priest With School Open"] = [
	BG(spr_tempo),
	TEXT("Back in front of the temple, your curiosity about the village's secrets deepens."),
	TEXT("Eager to understand what the ceremony entails, you knock on the door."),
	TEXT("After a few minute, a man opens the door."),
	ITEM(spr_shaman, 550, 110),
	SPEAKER("", noone, noone),
	TEXT("This man is probably the priest Brayd mentioned before..."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Hello I'm Jess. I'm a documentary filmmaker from afar. I'd like to interview you. Are you fine with recording?"),
	SPEAKER("", noone, noone),
	TEXT("... ... ..."),
	TEXT("The priest stares at you silently"),
	TEXT("And finally, before you freaks out and decide to leave, the priest talks."),
	SPEAKER("the priest??", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("I may answer some questions, but no recordings allowed."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Oh, okay, that's fine. Thank you."),
	TEXT("So as a priest who, I assume, has participated in many ceremonies, what is the true purpose of these rituals?"),
	SPEAKER("The Shaman", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("First of all, I'm a shaman, not a priest. We don't have any priests."),
	TEXT("I'm just healing the village and helping out with the ceremonies."),
	TEXT("I organize the ceremony, I work in the temple, but I am no priest. I'm a doctor if you are more willing to call me that."),
	TEXT("We show our loyalty and reverence to the divine through these ceremonies, seeking their forgiveness and protection."),
	TEXT("That's all I could tell you."),
	TEXT("See you, my lady."),
	RMITEM(spr_shaman),
	SPEAKER("", noone, noone),
	TEXT("Without giving you any more chance to ask other questions, he turn around and shut the door close."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I guess I should probably go visit the school and talk to Teacher Liu."),
	CHOICE("Go to the school", 
		OPTION("The school", "To School last"),
		OPTION("Don't chose this, there's bug", "To School last"))
]

global.topics[$ "Back Home"] = [
	BG(spr_Brayd_living),
	ITEM(spr_Brayd, 550, 110),
	SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
	TEXT("Welcome to my home!"),
	TEXT("That room over there is vacant. You can stay there during your time in the village."),
	TEXT("Oh, and one more thing...please remember not to go out at night."),
	TEXT("We have poultry in the yard, and it's easy to get hurt if you wander out in the dark."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("Okay, thank you, Brayd."),
	TEXT("I appreciate your hospitality during my stay."),
	RMITEM(spr_Brayd),
	BG(spr_Jess_rm),
	ITEM(spr_player, 500, 110),
	SPEAKER("", noone, noone),
	TEXT("Just as you were preparing to rest, a strange noise suddenly came from next door."),
	TEXT("What could it be?"),
	TEXT("You listen carefully and realize the sound is coming from your neighbor's house."),
	CHOICE("Go and see what happens",
		OPTION("Look out from the window", "GO See"),
		OPTION("Stay away from the window","Stay Room"))
]

global.topics[$ "GO See"] = [
	RMITEM(spr_player),
	BG(spr_neighbor_indoor),
	ITEM(spr_rand_neigh, 100, 200),
	ITEM(spr_rand_neighbor, 1000, 200),
	SPEAKER("", noone, noone),
	TEXT("Peeking through the window, you see the man next door trembling violently, his fingers frantically scratching his body, digging his nails into his flesh."),
	RMITEM(spr_rand_neighbor),
	ITEM(spr_rand_neighbor, 550, 200),
	TEXT("His actions suddenly halt, and then he lunges at his wife in a bizarre manner."),
	RMITEM(spr_rand_neighbor),
	ITEM(spr_rand_neighbor, 290, 200),
	TEXT("He bites down on her fingertips, savagely tearing at the flesh."),
	RMITEM(spr_rand_neighbor),
	ITEM(spr_rand_neighbor, 350, 200),
	TEXT("As he tastes the blood, his expression gradually returns to normal."),
	RMITEM(spr_rand_neighbor),
	ITEM(spr_rand_neighbor, 200, 200),
	TEXT("Then, he begins to unbuckle his belt, heedlessly initiating intimate relations with his wife."),
	TEXT("Astonishingly, the woman makes no sound throughout the ordeal, seemingly accustomed to this behavior."),
	RMITEM(spr_rand_neighbor),
	RMITEM(spr_rand_neigh),
	BG(spr_Jess_rm),
	ITEM(spr_player, 500, 110),
	SPEAKER("", noone, noone),
	TEXT("This scene shocks and unsettles you, making you realize that the secrets of this village are much deeper than you had imagined."),
	GOTO("To Be Continued")
]


global.topics[$ "Stay Room"] = [
	TEXT("You decide not to investigate the source of the noise, but the sounds leave you restless, haunted by the feeling of missing out on crucial information."),
	GOTO("To Be Continued")
]

global.topics[$ "To Be Continued"] = [
	TEXT("The night deepens."),
	TEXT("Brayd had warned you against going out at night, especially to the backyard where the poultry are kept, as it is dark and accidents are likely to occur."),
	TEXT("However, now you distrust everything and everyone here. The secrets only increase your sense of unease."),
	SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
	TEXT("I must uncover the truth behind this village, no matter how disturbing that truth may be."),
	SPEAKER("", noone, noone),
	TEXT("To Be Continued...")
]

/*
SPEAKER("You", spr_player_pfp, PORTRAIT_SIDE.LEFT),
TEXT(""),
SPEAKER("", noone, noone),
SPEAKER("Ale", spr_Ale_pfp, PORTRAIT_SIDE.RIGHT),
SPEAKER("Brayd", spr_Brayd_pfp, PORTRAIT_SIDE.RIGHT),
SPEAKER("Wangpo", spr_wangpo_pfp, PORTRAIT_SIDE.RIGHT),
SPEAKER("the lady", spr_lady_pfp, PORTRAIT_SIDE.RIGHT),
SPEAKER("Teacher Liu", spr_liu_pfp, PORTRAIT_SIDE.RIGHT),
SPEAKER("The Shaman", spr_shaman_pfp, PORTRAIT_SIDE.RIGHT),
*/