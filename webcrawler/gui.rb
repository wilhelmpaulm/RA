Shoes.setup do
  gem 'anemone'
  gem 'nokogiri'
  gem 'open-uri'
  gem 'mysql'
end

require 'anemone'
require 'nokogiri'
require 'open-uri'
require 'mysql'

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
				@start = button "Start"
				@stopd = button "end"
			end
		end
	end	

	stack margin:10 do
		para "Text here"
	end

	@start.click do
		
		db = Mysql.new("#{localhost}", "#{username}", "#{password}", "#{database}")
		# l_page = "307335"
		BASE_URL = "http://www.gmanetwork.com"
		SUB_URL = "http://www.gmanetwork.com/news/story/"
		# current_page = ["307335"]
		trans_page = ""
		type = "news articles"
		url_eng, url_fil, title_eng, title_fil, body_eng, body_fil, id_eng, id_fil= " "
		n_page = File.open("start.txt", "a+").gets
		limit = File.open("end.txt", "r+").gets
		# current_page.each do |cp|
		(n_page...limit).to_a.each do |cp|
			begin

				id_eng = cp
			puts "starting to scrape article number #{cp} \n please wait a moment . . . \n"
			doc = Nokogiri::HTML(open(SUB_URL+cp))
			url_eng = SUB_URL+cp
			if res = doc.text.match('Basahin sa Filipino')
				body_eng =  doc.css("div.text_body").text.strip.gsub(/\n\s+/,"")
				doc.xpath("//a").each do |a|
					trans_page = a['href'] if a.text.downcase.include?("basahin sa filipino")
				end
				id_fil = trans_page.gsub(/[^0-9]/,"")
				puts "starting to scrape article number #{id_eng} \n please wait a moment . . .\n"
				
				url_fil = SUB_URL+id_fil
		    doct = Nokogiri::HTML(open(BASE_URL+trans_page))
				body_fil =  doct.css("div.text_body").text.strip.gsub(/\n\s*/,"")
			pst = db.prepare("insert into websites(url_eng, url_fil,body_eng, body_fil, id_eng, id_fil, type) values(?,?,?,?,?,?,?)")
			pst.execute url_eng, url_fil, body_eng, body_fil, id_eng, id_fil, type
			n_page.puts cp
			else
				puts "Sorry #{SUB_URL+cp} returned null"
			end 	

			sleep 0.5
			rescue SystemExit, Interrupt
				raise
				
			rescue Exception => e
				p "error is: #{e}"
			end
			
		end
		db.close

	end


end