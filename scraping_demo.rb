require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com

# Open and read the file from the url
html_file = open("http://www.epicurious.com/tools/searchresults?search=chocolat").read

# Parse html string into ruby object
html_doc = Nokogiri::HTML(html_file)

#Search for recipeLnk class and loop over the array of results
html_doc.search('.recipeLnk').each do |recipe|
  #for each html tag, get the text
  p recipe.text
end
