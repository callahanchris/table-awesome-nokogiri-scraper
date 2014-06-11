To Do list

1. Use Nokogiri to look at the structure of the page.

2. Review the page itself

3. Decide data structure.

4. Make the command line program that takes user input.

5. Use OO to structure our program
  - classes: Person, UI/Admin/App/CommandLister



When the program runs, we should see something like this:

"Hello, welcome to this program."
0 Student 0
1 Student 1
...
"What student do you want to look at?"
get user input: ex: 01
show everything OR show options for further input





class UI # maybe? or do a while loop?
  def initialize
    # send call to DataGetter to scrape website and make a big ol' hash
    # display menu
  end
end

class DataGetter
  ALL_OF_OUR_DATA = [
    {
      "Student Name" => {
        :profile_page => ruby005.students.flatironschool.com/studentname.html,
        :favorite_quote => "i'm at table awesome", # tagline from profile page
        :links => { # iterate through links that are on profile page
          :github => www.github.com,
          :twitter => twitter.com,
          :blog => www.blog.com,
          :linkedin => www.linkedin.com
        },
        :favorite_cities => ["NYC", "BK"]
      }
    }
  ]
end


Data we absolutely want to use:
  Root:
  - Name
  - Link to Student's page
  Student Page:
  - Twitter
  - Github
  - Blog
  - LinkedIn
  - Some other info, possibly root/blurb, root/tagline, page/blurb, page/bio
  - Favorite cities

class Person
  # STUDENTS = []
  def initialize
    # STUDENTS << self
  end

  def self.all_students
  end

  def student_profile
  end



end




<!-- 

Data we have access to:
- Root:
  - photo
  - name
  - tagline
  - blurb
  - link

  - Person's page:
    - Head
      - background photo
      - photo
      - name
      - twitter
      - linkedin
      - github
      - blog
      - blurb
    - About
      - bio
      - education
      - work
    - Cred
      - Github
      - Code School
      - Treehouse
      - Coder Wall
    - Recently
      - Blog
      - Personal Projects
    - Favorites
      - Favorite cities
      - Other favorites

















 -->