class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    patient(date, self, doctor)
  end

  def appointments
    Appointment.all{|appointment| appointment.patient == self}
  end

  def patient
    self
  end 
  

end
