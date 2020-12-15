class ExamsController < ApplicationController
  before_action :set_exam, only: %i[show edit update destroy]

  def index
    @exams = if current_user.patient?
               Exam.where(user_id: current_user.id)
             elsif current_user.health_professional?
               Exam.joins(:appointment).where(appointment: { health_professional_user_id: current_user.id })
             else
               Exam.all
             end
  end

  def show; end

  def new
    @exam = Exam.new
  end

  def edit; end

  def create
    @exam = Exam.new(exam_params)

    attach_files(params[:exam][:documents])

    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exame criado com sucesso.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    attach_files(params[:exam][:documents])

    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to @exam, notice: 'Exame atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to exams_url, notice: 'Exame removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  def attach_files(documents)
    @exam.documents.attach(documents)
  end

  def set_exam
    @exam = Exam.find(params[:id])
  end

  def exam_params
    params.require(:exam).permit(:user_id, :appointment_id, :name, :description, :date, :place, :documents)
  end
end
