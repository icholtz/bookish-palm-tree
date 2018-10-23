class UmbrellasController < ApplicationController
  before_action :set_umbrella, only: [:show, :edit, :update, :destroy]

  # GET /umbrellas
  # GET /umbrellas.json
#  def gutentag
#  end

  # GET /umbrellas
  # GET /umbrellas.json
  def index
    if params[:q]
      search_term = params[:q]
      @umbrellas = Umbrella.search(search_term)
      # return our filtered list here
    else
      @umbrellas = Umbrella.all
    end
  end

  # GET /umbrellas/1
  # GET /umbrellas/1.json
  def show # methods in controller are called ACTIONS
  end

  # GET /umbrellas/new
  def new
    @umbrella = Umbrella.new
  end

  # GET /umbrellas/1/edit
  def edit
  end

  # POST /umbrellas
  # POST /umbrellas.json
  def create
    @umbrella = Umbrella.new(umbrella_params)

    respond_to do |format|
      if @umbrella.save
        # format.html { redirect_to "http://pluspng.com/img-png/well-done-png-hd-wants-never-in-continuous-don-t-forget-the-s-819.png" }
        format.html { redirect_to '/umbrellas', notice: 'A new umbrella was successfully created.' }
        format.json { render :show, status: :created, location: @umbrella }
      else
        format.html { render :new }
        format.json { render json: @umbrella.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /umbrellas/1
  # PATCH/PUT /umbrellas/1.json
  def update
    respond_to do |format|
      if @umbrella.update(umbrella_params)
        format.html { redirect_to @umbrella, notice: 'Umbrella was successfully updated.' }
        format.json { render :show, status: :ok, location: @umbrella }
      else
        format.html { render :edit }
        format.json { render json: @umbrella.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /umbrellas/1
  # DELETE /umbrellas/1.json
  def destroy
    @umbrella.destroy
    respond_to do |format|
      format.html { redirect_to umbrellas_url, notice: 'Umbrella was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_umbrella
      @umbrella = Umbrella.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def umbrella_params
      params.require(:umbrella).permit(:name, :description, :image_url, :color, :size, :material, :price)
    end
end
