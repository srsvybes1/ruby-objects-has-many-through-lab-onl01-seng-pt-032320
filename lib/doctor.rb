class Doctor
  attr_accessor :name, :appointment, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def new_appointment(paitent, date)
Appointment.new(paitent, self, date)
end
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
  end
end
#has many patients through appointments
  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
