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
  
  def appointments
    Appointment.all.select do |ap|
      ap.patient == self
    end
  end
  
  def doctors
    self.appointments.select do |ap|
      ap.doctor
    end
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
end