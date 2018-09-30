-- Create Date Variables

set theDate to date string of (current date)
set theDay to weekday of (current date)
set dueDate to (current date)

-- make the time of the due date be 11pm
tell dueDate
	set {its hours, its minutes, its seconds} to {23, 0, 0}
end tell

-- Create Task Variables

set petesSun to {"Clear Inbox", "Send 2 week confirmation email", "Send 3 week media request email", "Send 1 week promo email", "Log last night's evernote notebook to BusyCal", "Enter last night's show data to the BusyCal Events", "Make daily Evernote Entry", "Email bands who did well last night"}
set pineboxSun to {"Clear Inbox", "Send 2 week confirmation email", "Enter last night's show data to the BusyCal Events", "Make sure every band has submitted show info for tonight's show and email the bands who haven't"}


set petesMon to {"Clear Inbox", "Send 2 week confirmation email", "Send 3 week media request email", "Send 1 week promo email", "Log last night's evernote notebook to BusyCal", "Enter last night's show data to the BusyCal Events", "Make daily Evernote Entry", "Email bands who did well last night"}
set pineboxMon to {"Clear Inbox", "Send 2 week confirmation email", "Enter last night's show data to the BusyCal Events", "Make sure every band has submitted show info for tonight's show and email the bands who haven't"}

set petesTues to {"Clear Inbox", "Send 2 week confirmation email", "Send 3 week media request email", "Send 1 week promo email", "Log last night's evernote notebook to BusyCal", "Enter last night's show data to the BusyCal Events", "Make daily Evernote Entry", "Email bands who did well last night"}
set pineboxTues to {"Clear Inbox", "Enter last night's show data to the BusyCal Events"}

set petesWed to {"Clear Inbox", "Log last night's evernote notebook to BusyCal", "Enter last night's show data to the BusyCal Events", "Make daily Evernote Entry", "Email bands who did well last night"}
set pineboxWed to {"Clear Inbox", "Make Evernote tables for next Thursday-Monday", "Send an email to all bands who have not submitted tech info"}

set petesThurs to {"Clear Inbox", "Send 2 week confirmation email", "Send 3 week media request email", "Send 1 week promo email", "Log last night's evernote notebook to BusyCal", "Make daily Evernote Entry"}
set pineboxThurs to {"Clear Inbox", "Send 2 week confirmation email", "Make sure every band has submitted show info for tonight's show and email the bands who haven't"}

set petesFri to {"Clear Inbox", "Send 2 week confirmation email", "Send 3 week media request email", "Send 1 week promo email", "Log last night's evernote notebook to BusyCal", "Enter last night's show data to the BusyCal Events", "Make daily Evernote Entry", "Email bands who did well last night"}
set pineboxFri to {"Clear Inbox", "Send 2 week confirmation email", "Enter last night's show data to the BusyCal Events", "Make sure every band has submitted show info for tonight's show and email the bands who haven't"}

set petesSat to {"Clear Inbox", "Send 2 week confirmation email", "Send 3 week media request email", "Send 1 week promo email", "Log last night's evernote notebook to BusyCal", "Enter last night's show data to the BusyCal Events", "Make daily Evernote Entry", "Email bands who did well last night"}
set pineboxSat to {"Clear Inbox", "Send 2 week confirmation email", "Enter last night's show data to the BusyCal Events", "Make sure every band has submitted show info for tonight's show and email the bands who haven't"}


set codingTasks to {"Work On Coding Project"}
set exerciseTasks to {"Exercise at least 45 minutes"}
set musicTasks to {"Practice at least 30 minutes"}

-- Activate Omnifocus 
tell application "OmniFocus"
	activate
	tell default document
		-- Set Tag Variables
		set petesTag to first flattened tag where its name is "Pete's Candy Store"
		set pineBoxTag to first flattened tag where its name is "Pine Box Rock Shop"
		set codingTag to first flattened tag where its name is "Coding"
		set musicTag to first flattened tag where its name is "Music"
		set exerciseTag to first flattened tag where its name is "Exercise"
		
		
		-- Make a new Omnifocus Document
		set theProject to make new project with properties {name:theDate, due date:dueDate}
		
		tell theProject
			
			-- Make Parent Tasks
			set petesParentTask to make new task with properties {name:"Pete's Candy Store", primary tag:petesTag}
			set pineboxParentTask to make new task with properties {name:"Pine Box Rock Shop", primary tag:pineBoxTag}
			set codingParentTask to make new task with properties {name:"Coding", primary tag:codingTag}
			set musicParentTask to make new task with properties {name:"Music", primary tag:musicTag}
			set exerciseParentTask to make new task with properties {name:"Exercise", primary tag:exerciseTag}
			
			-- Make Tasks Depending On Day Of Week
			if weekday of (current date) is Sunday then
				repeat with theItem in petesSun
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				repeat with theItem in pineboxSun
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
			else if weekday of (current date) is Monday then
				repeat with theItem in petesMon
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				repeat with theItem in pineboxMon
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
				
			else if weekday of (current date) is Tuesday then
				repeat with theItem in petesTues
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				repeat with theItem in pineboxTues
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
				
			else if weekday of (current date) is Wednesday then
				repeat with theItem in petesWed
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				
				repeat with theItem in pineboxWed
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
				
			else if weekday of (current date) is Thursday then
				repeat with theItem in petesThurs
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				repeat with theItem in pineboxThurs
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
				
			else if weekday of (current date) is Friday then
				repeat with theItem in petesFri
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				repeat with theItem in pineboxFri
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
				
			else if weekday of (current date) is Saturday then
				repeat with theItem in petesSat
					set petesTask to make new task with properties {name:theItem, primary tag:petesTag}
					move petesTask to end of tasks of petesParentTask
				end repeat
				repeat with theItem in pineboxSat
					set pineboxTask to make new task with properties {name:theItem, primary tag:pineBoxTag}
					move pineboxTask to end of tasks of pineboxParentTask
				end repeat
				
			end if
			
			
			repeat with theItem in codingTasks
				set codingTask to make new task with properties {name:theItem, primary tag:codingTag}
				move codingTask to end of tasks of codingParentTask
			end repeat
			
			
			repeat with theItem in exerciseTasks
				set exerciseTask to make new task with properties {name:theItem, primary tag:exerciseTag}
				move exerciseTask to end of tasks of exerciseParentTask
			end repeat
			
			
			repeat with theItem in musicTasks
				set musicTask to make new task with properties {name:theItem, primary tag:musicTag}
				move musicTask to end of tasks of musicParentTask
			end repeat
			
		end tell
	end tell
end tell

