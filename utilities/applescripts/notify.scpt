(* Take a string as command line argument and display notification with that string as message *)
on run argv
	set msg to item 1 of argv
	display notification msg with title "Utility Notifier" sound name "Frog"
end run
