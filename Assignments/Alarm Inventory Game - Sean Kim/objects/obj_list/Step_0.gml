
if (assignTask == false) {
	randomize();
    // Initialize the burger array with a bun and a patty

    // List of optional ingredients
    var optional_ingredients = ["lettuce", "cheese", "sauce", "tomato"];

    // Loop through each optional ingredient
    for (var i = 0; i < array_length_1d(optional_ingredients); i++) {
        var ingredient = optional_ingredients[i];
        
        // Randomly decide to include this ingredient
        if (irandom(1) < 0.5) { // 50% chance to include the ingredient
			
			var count = 1;
			randomize();
			if(random(1) < 0.30) { 
				count++;
			}
			
            for (var j = 1; j <= count; j++) {
                // Add the ingredient to the burger
                global.burger[array_length_1d(global.burger)] = ingredient;
            }
        }
    }
    // Now, burger array contains the list of ingredients
    // You can add additional code here to use the burger array as needed
	
	assignTask = true;
}
