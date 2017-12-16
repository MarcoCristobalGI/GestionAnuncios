class QualifiesController < ApplicationController
  before_action :set_qualify, only: [:show, :edit, :update, :destroy]

  # GET /qualifies
  # GET /qualifies.json
  def index
    @qualifies = Qualify.all
  end

  # GET /qualifies/1
  # GET /qualifies/1.json
  def show
  end

  # GET /qualifies/new
  def new
    @qualify = Qualify.new
  end

  # GET /qualifies/1/edit
  def edit
  end

  # POST /qualifies
  # POST /qualifies.json
  def create
    @qualify = Qualify.new(qualify_params)

    respond_to do |format|
      if @qualify.save
        format.html { redirect_to @qualify, notice: 'Qualify was successfully created.' }
        format.json { render :show, status: :created, location: @qualify }
      else
        format.html { render :new }
        format.json { render json: @qualify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualifies/1
  # PATCH/PUT /qualifies/1.json
  def update
    respond_to do |format|
      if @qualify.update(qualify_params)
        format.html { redirect_to @qualify, notice: 'Qualify was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualify }
      else
        format.html { render :edit }
        format.json { render json: @qualify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualifies/1
  # DELETE /qualifies/1.json
  def destroy
    @qualify.destroy
    respond_to do |format|
      format.html { redirect_to qualifies_url, notice: 'Qualify was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualify
      @qualify = Qualify.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualify_params
      params.require(:qualify).permit(:worker_id, :score_id, :description)
    end
end
