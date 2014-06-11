require 'open-uri'
require 'nokogiri'
require 'pry'
require 'ap'

student_index = Nokogiri::HTML(open('http://ruby005.students.flatironschool.com/'))

ALL_OF_OUR_DATA = student_index.search("h3 a").collect do |student|
  {student.text =>
   {:profile_page => "http://ruby005.students.flatironschool.com/#{student["href"]}"}} 
end

student_index.search("h3 a").each_with_index do |student, i|
  profile_page = Nokogiri::HTML(open(ALL_OF_OUR_DATA[i][student.text][:profile_page]))
  puts "I'm scraping #{student.text}'s profile page!"
  favorite_quote = profile_page.search("div.textwidget h3").text
  links_array = profile_page.search("div.social-icons a")

  social_links = links_array.collect do |link|
    link["href"]
  end

  twitter = social_links[0]
  linkedin = social_links[1]
  github = social_links[2]

  if student.text == 'Rebecca Greenblatt'
    blog = profile_page.search("div.services")[3].search("a")[0].text
  else
    blog = profile_page.search("div.services")[4].search("a")[0]['href']
  end

  ALL_OF_OUR_DATA[i][student.text].merge!({
    :favorite_quote => favorite_quote,
    :github => github,
    :twitter => twitter,
    :blog => blog,
    :linkedin => linkedin
  })
end