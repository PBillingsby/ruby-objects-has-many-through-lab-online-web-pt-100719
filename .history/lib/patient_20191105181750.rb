class Patient
  attr_reader :name
  @@PATIENTS = []
  def initialize(name)
    @name = name
    @@PATIENTS << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date) << self
  end
end