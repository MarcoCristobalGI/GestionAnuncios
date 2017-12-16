class JobadvertsController < ApplicationController
  before_action :set_jobadvert, only: [:show, :edit, :update, :destroy]

  # GET /jobadverts
  # GET /jobadverts.json
  def index
    @jobadverts = Jobadvert.all
  end

  # GET /jobadverts/1
  # GET /jobadverts/1.json
  def show
  end

  # GET /jobadverts/new
  def new
    @jobadvert = Jobadvert.new
  end

  # GET /jobadverts/1/edit
  def edit
  end

  # POST /jobadverts
  # POST /jobadverts.json
  def create
    @jobadvert = Jobadvert.new(jobadvert_params)

    respond_to do |format|
      if @jobadvert.save
        format.html { redirect_to @jobadvert, notice: 'Jobadvert was successfully created.' }
        format.json { render :show, status: :created, location: @jobadvert }
      else
        format.html { render :new }
        format.json { render json: @jobadvert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobadverts/1
  # PATCH/PUT /jobadverts/1.json
  def update
    respond_to do |format|
      if @jobadvert.update(jobadvert_params)
        format.html { redirect_to @jobadvert, notice: 'Jobadvert was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobadvert }
      else
        format.html { render :edit }
        format.json { render json: @jobadvert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobadverts/1
  # DELETE /jobadverts/1.json
  def destroy
    @jobadvert.destroy
    respond_to do |format|
      format.html { redirect_to jobadverts_url, notice: 'Jobadvert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobadvert
      @jobadvert = Jobadvert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobadvert_params
      params.require(:jobadvert).permit(:title, :description, :vacancies, :employer_id, :category_id, :city_id)
    end
end
