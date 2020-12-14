class HomeController < ApplicationController
  def index
    @appointments = Appointment.where(patient_user_id:current_user.id).order(date: :desc).limit(3)
    @exams = Exam.where(user:current_user.id).order(date: :desc).limit(3)
    @treatments = Treatment.where(user:current_user.id).order(date: :desc).limit(3)
 
    @all = []
    Appointment.all.map { |a| @all << { 'tipo' => 'Consulta', 'data' => a.date.try(:strftime, '%d/%m/%Y %H:%M'), 'titulo' => a.title, 'link' => "appointments/#{a.id}" } }
    Exam.all.map { |e| @all << { 'tipo' => 'Exame', 'data' => e.date.try(:strftime, '%d/%m/%Y %H:%M'), 'titulo' => e.name, 'link' => "exams/#{e.id}" } }
    Treatment.all.map { |t| @all << { 'tipo' => 'Tratamento', 'data' => t.date.try(:strftime, '%d/%m/%Y %H:%M'), 'titulo' => t.title, 'link' => "treatments/#{t.id}" } }

  end



end
