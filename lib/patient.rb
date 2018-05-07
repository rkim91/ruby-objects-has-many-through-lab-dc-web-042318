class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(apt)
    @appointments << apt
    apt.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.map do |apt|
      apt.doctor
    end
  end
end
