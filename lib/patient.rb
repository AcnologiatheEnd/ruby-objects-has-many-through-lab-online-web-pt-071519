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
    Appointments.all.select do |ap|
      ap.patient == self
    end
  end
  
  def doctors
    self.appointments.map do |ap|
      ap.doctor
  end
  
end