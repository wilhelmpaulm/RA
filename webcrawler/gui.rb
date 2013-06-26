Shoes.app(title: "GMA News Webcrawler", width: 600, height: 400)do 
	stack margin: 10 do

		flow margin do
			stack margin:5 do
	   			para "localhost"
	   			@localhost = edit_line "127.0.0.1", :width => 100
	   			para "username"
	   			@username = edit_line "root", :width => 100      
   			end
   			stack margin:5 do	
	   			para "password"
	   			@password = edit_line "", :width => 100      
	   			para "database"
	   			@database = edit_line "websites", :width => 100      
			end
			stack margin:5 do
				@start = button"Start"
				@end = button"end"
			end
		end	

		stack margin:10 do
			para "Text here"
		end
	end
end