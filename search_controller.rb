# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# Le Cai (lzc0033@auburn.edu 903709910)
# COMP3220 - 002 : Programming Languages
# Project_1

# Search controller class
class SearchController

	attr_accessor :searchSuggestionList

	def initialize(search_list = [])
		# assign array search_list as @searchSuggestionList
		@searchSuggestionList = search_list
  	end

	def showList()
		# print @searchSuggestionList
		@searchSuggestionList
	end

	def updateList(movie_name)
		# check if movie duplicate, if not unshift it to the top of the list
		# if duplicate then remove it then unshift it to the top of the list.
		if searchSuggestionList.include? (movie_name)
			searchSuggestionList.unshift(searchSuggestionList.delete(movie_name))
		else
			searchSuggestionList.unshift(movie_name)
		end
		end

	def saveListToFile()
		#####
		#
		# 1.save updated search suggestion list to "data.txt" file
		#
		#####
		# create a data.txt and write the list.
		File.open("data.txt", 'w')	{|f| f.write(searchSuggestionList)}

  end
  end
