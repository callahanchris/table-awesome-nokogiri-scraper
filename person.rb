all_data = [{
    :name => "Matt",
    :profile_page => "http://ruby005.students.flatironschool.com",
    :favorite_quote => "I like this quote",
    :github => "github",
    :twitter => "twitter",
    :blog => "my blog",
    :linkedin => "my linkedin",
    :id => 0
  },
{
    :name => "Ilana",
    :profile_page => "http://ruby005.students.flatironschool.com",
    :favorite_quote => "I like this quote",
    :github => "github",
    :twitter => "twitter",
    :blog => "my blog",
    :linkedin => "my linkedin",
    :id => 0
  }]


class Person
  attr_accessor = :name, :profile_page, :favorite_quote, :github, :twitter, :blog, :linkedin, :id
  
  def initialize(hash)
    @@count = 0
    @@instances = []

    @name = hash[:name]
    @profile_page = hash[:profile_page]
    @favorite_quote = hash[:favorite_quote]
    @github = hash[:github]
    @twitter = hash[:twitter]
    @blog = hash[:blog]
    @linkedin = hash[:linkedin]
    @id = hash[:id]

    @@count += 1
    @@instances << self
  end

  def self.create_person(all_data)
    all_data.each do |student|
      Person.new(student) 
    end
  end

  def self.instances
    @@instances
  end

  def self.count
    @@count
  end
end

puts Person.create_person(all_data)
















