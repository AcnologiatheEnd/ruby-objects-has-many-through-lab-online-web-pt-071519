class Doctor
 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments
    Appointments.all.select do |ap|
      ap.doctor == self
    end
  end
  
  def new_appointment(date, patient)
    Appointments.new(date, patient, self)
  end
  
  def patients
    self.appointments.map do |ap|
      ap.patient
    end
end