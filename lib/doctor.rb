class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(apt)
    @appointments << apt
    apt.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.map do |apt|
      apt.patient
    end
  end
end
