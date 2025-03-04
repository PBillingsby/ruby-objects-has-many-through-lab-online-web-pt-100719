class Patient
  attr_reader :name
  @@PATIENTS = []
  def initialize(name)
    @name = name
    @@PATIENTS << self
  end
  
  def self.all
    @@PATIENTS
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
end