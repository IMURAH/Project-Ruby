# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# Le Cai (lzc0033@auburn.edu 903709910)
# COMP3220 - 002 : Programming Languages
# Project_1

require_relative 'search_controller.rb'


# Initialize default list ...
defaultSearchList = ["toy story",
						"spider man",
						"star wars",
						"harry potter",
						"the hobbit",
						"the hangover"]

# Let first search_controller get default list
controllerObject = SearchController.new(defaultSearchList)

#####
#
# 1.create endless loop
# 2.get an input from terminal(console)
# 3.update search suggestion list
# 4.loop should end when user write "exit"
# 5.save updated "searchSuggestionList" to "data.txt" file
#
#####
# 0 == 0 so we create our endless loop.
# use get.chomp to get input and store as userInput.
# check if the input is exit.
# if it is then we save list to file and exit the program
# if not then we update the list.
while 0 == 0
	puts "search_list: #{controllerObject.showList()}"
	puts "New lookup"
	userInput = gets.chomp

	if (userInput != "exit")
		controllerObject.updateList(userInput)
		next
	else
		controllerObject.saveListToFile()
    break
	end
end
