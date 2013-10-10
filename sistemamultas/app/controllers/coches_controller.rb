class CochesController < ApplicationController
  before_action :set_coche, only: [:show, :edit, :update, :destroy]

  # GET /coches
  # GET /coches.json
  def index
    @coches = Coche.all
  end

  # GET /coches/1
  # GET /coches/1.json
  def show
  end

  # GET /coches/new
  def new
    @coche = Coche.new
  end

  # GET /coches/1/edit
  def edit
  end

  # POST /coches
  # POST /coches.json
  def create
    @coche = Coche.new(coche_params)

    respond_to do |format|
      if @coche.save
        format.html { redirect_to @coche, notice: 'Coche was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coche }
      else
        format.html { render action: 'new' }
        format.json { render json: @coche.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coches/1
  # PATCH/PUT /coches/1.json
  def update
    respond_to do |format|
      if @coche.update(coche_params)
        format.html { redirect_to @coche, notice: 'Coche was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coche.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coches/1
  # DELETE /coches/1.json
  def destroy
    @coche.destroy
    respond_to do |format|
      format.html { redirect_to coches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coche
      @coche = Coche.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coche_params
      params.require(:coche).permit(:matricula, :usuario_id)
    end
end
