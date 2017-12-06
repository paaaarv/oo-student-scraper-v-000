class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      if key == :name
        self.name = value
      elsif key == :location
        self.location = value
      end
      @@all << self
  end

  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      stud = Student.new(name: student[:name], location: student[:location])
    end


  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |attribute|
      binding.pry
    end

  end

  def self.all

  end
end
