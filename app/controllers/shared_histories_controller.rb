class SharedHistoriesController < ApplicationController
  before_action :set_shared_history, only: %i[show edit update destroy]

  def index
    @shared_histories = SharedHistory.where(shared_user: current_user.id).where('expiration_date > ?', Time.zone.now)
  end

  def show; end

  def new
    @shared_history = SharedHistory.new
  end

  def edit; end

  def create
    @shared_history = SharedHistory.new(shared_history_params)

    respond_to do |format|
      if @shared_history.save
        format.html { redirect_to @shared_history, notice: 'Histórico compartilhado criado com sucesso.' }
        format.json { render :show, status: :created, location: @shared_history }
      else
        format.html { render :new }
        format.json { render json: @shared_history.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shared_history.update(shared_history_params)
        format.html { redirect_to @shared_history, notice: 'Histórico compartilhado atualizado.' }
        format.json { render :show, status: :ok, location: @shared_history }
      else
        format.html { render :edit }
        format.json { render json: @shared_history.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shared_history.destroy

    respond_to do |format|
      format.html { redirect_to shared_histories_url, notice: 'Histórico compartilhado deletado.' }
      format.json { head :no_content }
    end
  end

  private

  def set_shared_history
    @shared_history = SharedHistory.find(params[:id])
  end

  def shared_history_params
    params.require(:shared_history).permit(:shared_user_id, :owner_user_id, :appointment_id, :expiration_date)
  end
end
