class HomeController < ApplicationController
  def index
    @appointments = Appointment.where(patient_user_id:current_user.id).order(date: :desc).limit(3)
    @exams = Exam.where(user:current_user.id).order(date: :desc).limit(3)
    @treatments = Treatment.where(user:current_user.id).order(date: :desc).limit(3)
  end
end
