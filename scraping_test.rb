require 'open-uri'
require 'nokogiri'
require 'pry'

student_index = Nokogiri::HTML(open('http://ruby005.students.flatironschool.com/'))



ALL_OF_OUR_DATA = student_index.search("h3 a").collect do |student|
  {student.text =>
   {:profile_page => "http://ruby005.students.flatironschool.com/#{student["href"]}"}} 
end

p ALL_OF_OUR_DATA

# binding.pry

# ALL_OF_OUR_DATA = [
#                     {
#                       "Michael" => {
#                         :profile_page => link
#                       }
#                     }, 
#                   ]

  # ALL_OF_OUR_DATA = [
  #   "Student Name" => {
    ## h3 > a & name
    ## <a href="students/MatthiasLoker.html">Matthias Loker</a>

  #     :profile_page => ruby005.students.flatironschool.com/studentname.html,
  #     :tagline => "i'm at table awesome", # tagline from profile page
  #     :links => { # iterate through links that are on profile page
  #       :github => www.github.com,
  #       :twitter => twitter.com,
  #       :blog => www.blog.com,
  #       :linkedin => www.linkedin.com
  #     },
  #     :favorite_cities => ["NYC", "BK"]
  #   }
  # ]





# When you use Nokogiri to scrape a page it behind the scenes makes an instance of that page and puts it on your system.
# Because it's an inastance you can run methods on it (check .methods to see what are available.)

# 
