if (array_length(preysInScreen)!=0){// shooting make preys alert
	for (i=0;i<array_length(preysInScreen);i++){
		preysInScreen[i].alert = preysInScreen[i].alertThreshold*2;
	}
}