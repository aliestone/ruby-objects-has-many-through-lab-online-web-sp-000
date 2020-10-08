class Doctor

  attr_accessor :name

  @@all_doctors = []

  def initialize(name)
    @name = name
    @@all_doctors << self
  end

end
