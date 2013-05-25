require 'anemone'
require 'nokogiri'
require 'open-uri'

BASE_URL = "http://www.gmanetwork.com/news/story/"
current_page = ["307335"]
ary = []


# current_page.each do |cp|
  Anemone.crawl(BASE_URL+"307335") do |anemone|
    anemone.on_every_page do |page|
      puts page.url
    end
  end
# end


puts ary.uniq