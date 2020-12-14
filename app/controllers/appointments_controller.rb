class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show edit update destroy]

  def index
    @appointments = Appointment.all
  end

  def show; end

  def new
    @appointment = Appointment.new
  end

  def edit; end

  def create
    @appointment = Appointment.new(appointment_params)

    attach_files(params[:appointment][:prescriptions])

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Consulta criada com sucesso.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    attach_files(params[:appointment][:prescriptions])

    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Consulta atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Consulta removida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  def attach_files(prescriptions)
    @appointment.prescriptions.attach(prescriptions)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:title, :health_professional_user_id, :patient_user_id, :date, :return_date,
                                        :prescriptions)
  end
end
