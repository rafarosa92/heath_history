class TreatmentsController < ApplicationController
  before_action :set_treatment, only: %i[show edit update destroy]

  def index
    @treatments = Treatment.all
  end

  def show; end

  def new
    @treatment = Treatment.new
  end

  def edit; end

  def create
    @treatment = Treatment.new(treatment_params)

    attach_file(params[:treatment][:document])

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to @treatment, notice: 'Tratamento criado com sucesso.' }
        format.json { render :show, status: :created, location: @treatment }
      else
        format.html { render :new }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    attach_file(params[:treatment][:documents])

    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to @treatment, notice: 'Tratamento atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @treatment }
      else
        format.html { render :edit }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @treatment.destroy

    respond_to do |format|
      format.html { redirect_to treatments_url, notice: 'Tratamento removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  def attach_file(documents)
    @treatment.documents.attach(documents)
  end

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params
    params.require(:treatment).permit(:appointment_id, :user_id, :title, :description, :place, :date, :kind, :documents)
  end
end
