display dialog "Welcome to the dialog game! Made by alboxer2000" buttons {"Play", "About", "Facts"}
set answer to button returned of result
if answer is equal to "Play" then
	display dialog "you are in bed, what do you do?" buttons {"get up", "stay in bed", "keep eyes closed while still awake"}
	set answer to button returned of result
	if answer is equal to "get up" then
		display dialog "you get up and get attacked by the bed monster
			    game over!" buttons {"hint", "restart"}
		set answer to button returned of result
		if answer is equal to "hint" then
			display dialog "don't get up immediately!"
		end if
		if answer is equal to "restart" then
			display dialog "restart by reopening the app (will close automatically when OK pressed" buttons {"OK"}
		end if
	end if
	if answer is equal to "stay in bed" then
		display dialog "you stay in bed and hear banging under your bed. what do you do?" buttons {"stay in bed", "close eyes", "get up"}
		set answer to button returned of result
		if answer is equal to "get up" then
			display dialog "you get up and get attacked by the bed monster
			    game over!" buttons {"restart"}
			set answer to button returned of result
			if answer is equal to "restart" then
				display dialog "restart by reopening the app (will close automatically when OK pressed" buttons {"OK"}
			end if
		end if
		if answer is equal to "stay in bed" then
			display dialog "the banging was the bed monster. he goes away because he thinks you are still asleep. he will come again in 1 hour. it's currently 8:00 AM." buttons {"get up", "wait a minute and then get up", "scream"}
			set answer to button returned of result
			if answer is equal to "get up" then
				display dialog "the monster hears you and comes back. he attacks you. game over!" buttons {"restart"}
				set answer to button returned of result
				if answer is equal to "restart" then
					display dialog "reopen the game. close it by pressing the Close button here" buttons {"Close"}
				end if
			end if
		end if
	end if
	if answer is equal to "keep eyes closed while still awake" then
		display dialog "he knows." buttons {" "}
		display dialog "HE" buttons {" "} with icon 2
		display dialog "IS" buttons {" "} with icon 2
		display dialog "COMING" buttons {" "} with icon 2
		display dialog "the bed monster attacks you. game over!" buttons {"restart"}
		set answer to button returned of result
		if answer is equal to "restart" then
			display dialog "reopen the game. close it by pressing the Close button here" buttons {"Close"}
		end if
	end if
end if
if answer is equal to "About" then
	display dialog "This is a game made with AppleScript about an RPG... made with dialog windows!
	You are currently playing this version of the game: v.1.0.0-Beta
	Press Changelog button to see the changelog, to exit this menu, restart the game." buttons {"Changelog"} with icon 1
	set answer to button returned of result
	if answer is equal to "Changelog" then
		display dialog "V.1.0.0 Beta:
game in development"
	end if
end if
if answer is equal to "Facts" then
	display dialog "1. This game has 21 programmed buttons!
That's all!" buttons {"Close"}
	set answer to button returned of result
	if answer is equal to "Close" then
		display dialog "To close this window, you need to reopen the game. To close the game press the Close button here." buttons {"Close"}
	end if
end if
