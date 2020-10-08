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
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.include? do |appointment|
    appointment.patient == self
  end

  def doctors
    appointments.collect do |appointment|
    appointment.doctor
  end
end
end
end
