require 'anemone'
require 'nokogiri'
require 'open-uri'

n_page = File.open("links", "r+").gets
# puts n_page

l_page = "307335"
BASE_URL = "http://www.gmanetwork.com"
SUB_URL = "http://www.gmanetwork.com/news/story/"
current_page = ["307335"]
trans_page = ""

current_page.each do |cp|

	puts "starting to scrape #{SUB_URL+cp} \n please wait a moment . . ."
	doc = Nokogiri::HTML(open(SUB_URL+cp))
	if res = doc.text.match('Basahin sa Filipino')
		file = File.new("#{cp}", "w")
		file.puts doc.css("div.text_body").text.strip.gsub(/\n\s+/,"")
		file.close
		doc.xpath("//a").each do |a|
			puts trans_page = a['href'] if a.text.downcase.include?("basahin sa filipino")
		end


    doct = Nokogiri::HTML(open(BASE_URL+trans_page))
		file = File.new("t_#{cp}", "w")
		# puts doct.css("div.text_body").text.class
		file.puts doct.css("div.text_body").text.strip.gsub(/\n\s*/,"")
		file.close
	else
		puts "Sorry #{SUB_URL+cp} returned null"
	end 	
end
