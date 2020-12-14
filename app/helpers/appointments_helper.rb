module AppointmentsHelper
  def appointments_for_select(user)
    Appointment.where(patient_user_id: user.id).pluck(:id, :title).map { |id, title| [title, id] }
  end
end
