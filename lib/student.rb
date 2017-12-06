class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      if key == :name
        self.name = value
      elsif key == :location
        self.location = value
      elsif key == :twitter
        self.twitter = value
      elsif key == :linkedin
        self.linkedin = value
      elsif key == :github
        self.github = value
      elsif key == :blog
        self.blog = value
      elsif key == :profile_quote
        self.profile_quote = value
      elsif key == :bio
        self.bio = value
      elsif key == :profile_url
        self.profile_url = value
      end
      @@all << self
  end

  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      stud = Student.new(name: student[:name], location: student[:location])
      binding.pry
    end


  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
