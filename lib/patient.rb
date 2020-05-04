class Patient

  attr_accessor :name, :appointment, :docotr

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
