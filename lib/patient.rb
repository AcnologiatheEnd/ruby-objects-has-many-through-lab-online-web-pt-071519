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
    Appointment.all.select do |apoint|
      apoint.patient == self
    end
  end
  
  def doctors
    self.appointments.map do |ap|
      ap.doctor
    end
  end
  
  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end
  
end