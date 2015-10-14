class PhotographiesController < ApplicationController
  before_action :set_photography, only: [:show, :edit, :update, :destroy]

  # GET /photographies
  # GET /photographies.json
  def index
    @photographies = Photography.all
  end

  # GET /photographies/1
  # GET /photographies/1.json
  def show
  end

  # GET /photographies/new
  def new
    @photography = Photography.new
  end

  # GET /photographies/1/edit
  def edit
  end

  # POST /photographies
  # POST /photographies.json
  def create
    @photography = Photography.new(photography_params)

    respond_to do |format|
      if @photography.save
        format.html { redirect_to :controller => 'photographies', :action => "index" }
        format.json { render :show, status: :created, location: @photography }
      else
        format.html { render :new }
        format.json { render json: @photography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photographies/1
  # PATCH/PUT /photographies/1.json
  def update
    respond_to do |format|
      if @photography.update(photography_params)
        format.html { redirect_to :controller => 'photographies', :action => "index"  }
        format.json { render :show, status: :ok, location: @photography }
      else
        format.html { render :edit }
        format.json { render json: @photography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographies/1
  # DELETE /photographies/1.json
  def destroy
    @photography.destroy
    respond_to do |format|
      format.html { redirect_to photographies_url, notice: 'Photography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photography
      @photography = Photography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photography_params
      params.require(:photography).permit(:name, :description, :url, :categories_id)
    end
end
