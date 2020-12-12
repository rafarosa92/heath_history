class SharedHistoriesController < ApplicationController
  before_action :set_shared_history, only: [:show, :edit, :update, :destroy]

  # GET /shared_histories
  # GET /shared_histories.json
  def index
    @shared_histories = SharedHistory.all
  end

  # GET /shared_histories/1
  # GET /shared_histories/1.json
  def show
  end

  # GET /shared_histories/new
  def new
    @shared_history = SharedHistory.new
  end

  # GET /shared_histories/1/edit
  def edit
  end

  # POST /shared_histories
  # POST /shared_histories.json
  def create
    @shared_history = SharedHistory.new(shared_history_params)

    respond_to do |format|
      if @shared_history.save
        format.html { redirect_to @shared_history, notice: 'Shared history was successfully created.' }
        format.json { render :show, status: :created, location: @shared_history }
      else
        format.html { render :new }
        format.json { render json: @shared_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_histories/1
  # PATCH/PUT /shared_histories/1.json
  def update
    respond_to do |format|
      if @shared_history.update(shared_history_params)
        format.html { redirect_to @shared_history, notice: 'Shared history was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_history }
      else
        format.html { render :edit }
        format.json { render json: @shared_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_histories/1
  # DELETE /shared_histories/1.json
  def destroy
    @shared_history.destroy
    respond_to do |format|
      format.html { redirect_to shared_histories_url, notice: 'Shared history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_history
      @shared_history = SharedHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shared_history_params
      params.require(:shared_history).permit(:shared_user_id, :owner_user_id, :appointment_id, :expiration_date)
    end
end
