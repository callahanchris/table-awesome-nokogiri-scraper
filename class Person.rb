#   ALL_OF_OUR_DATA = [
#     "Julia" => {
#       :profile_page => ruby005.students.flatironschool.com/studentname.html,
#       :tagline => "i'm at table awesome", # tagline from profile page
#       :links => { # iterate through links that are on profile page
#         :github => www.github.com,
#         :twitter => twitter.com,
#         :blog => www.blog.com,
#         :linkedin => www.linkedin.com
#       },
#       :favorite_cities => ["NYC", "BK"]
#     },
#       "Koren" => {
#       :profile_page => ruby005.students.flatironschool.com/studentname.html,
#       :tagline => "i'm at table awesome", # tagline from profile page
#       :links => { # iterate through links that are on profile page
#         :github => www.github.com,
#         :twitter => twitter.com,
#         :blog => www.blog.com,
#         :linkedin => www.linkedin.com
#       },
#       :favorite_cities => ["NYC", "BK"]
#     },

#   ]

# array = ["koren", "Julia", "Chris"]

# class Person
#   attr_accessor :name, :profile_page, :tagline, :links, :github, :twitter, :blog,  :linkedin, :favorite_cities

#   @@students = []

#   def initialize(array)
#     # create hash for each student
#     @name = array
#     @profile_page = tagline
#     @tagline = tagline
#     @links = links
#     @github = github
#     @twitter = twitter
#     @blog = blog
#     @linkedin = linkedin
#     @favorite_cities = favorite_cities
#     @@students << self
#   end

#   def method
#     iterate through hash and create instance of Person for each key/value in hash
#   end

#   def create_tagline
#     @tagline = @name[]
#   end


# end

# def 

#   koren = Person.new(0)
#   koren.tagline = 
#   koren =  

#   def create_person

# dogs = [
#     {"koren" => {:page => "korenpage"}}, 
#     {"julia" => {:page => "juliapage"}}
#   ]

# class Dog
#     attr_accessor :name, :page

#     def initialize
#       @name = name
#       @color = color
#     end
# end

# fido = Dog.new

# fido.color = "brown"


# ++++++++++++++++++++++++++++++++++++++++++++++

all_data = [
    {"Matt" => {:profile_page => "profile",
          :favorite_quote => "hello",
          :github => "github",
          :twitter => "twitter",
          :blog => "blog",
          :linkedin => "linkedin"}
    }, 
    {"Ilana" =>  {:profile_page => "profile",
          :favorite_quote => "hello",
          :github => "github",
          :twitter => "twitter",
          :blog => "blog",
          :linkedin => "linkedin"}
  }
]

  def create_person(all_data)
    index = 0
    all_data.each do |student|
      student.each do |name, attributes_hash|
        current_person = Person.new(all_data[index]) 
        index = index + 1
      end
    end
  end

class Person
  attr_accessor = :name, :profile_page, :favorite_quote, :github, :twitter, :blog, :linkedin
  
  @@count = 0
  @@instances = []
  # @@all_people = {}

  def initialize(hash)
    hash.each do |name, values|
      values.each do |profile_page, link|
        @name = name
        @profile_page = profile_page
        @favorite_quote = favorite_quote
        @github = github
        @twitter = twitter
        @blog = blog
        @linkedin = linkedin
      end
    end
    @@count += 1
  end

  # def self.create_person(all_data)
  #   index = 0
  #   all_data.each do |student|
  #     student.each do |name, attributes_hash|
  #       current_person = Person.new(all_data[index]) 
  #       index = index + 1
  #     end
  #   end
  # end

  # def self.all_people
  #   @@all_people
  # end

  def self.instances
    @@instances
  end

  def self.count
    @@count
  end
end

# matt = Person.new(all_data[0])














