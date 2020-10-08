class Doctor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|song| appointment.doctor == self}
  end

  def patients
    appointments.map{|appointment| appointment.patient}
  end
    

end
