class Doctor

  attr_accessor :name, :appointment

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.doctor == self
  end
end

  def patients
    appointments.map{|appointment| appointment.patient}
  end

end
