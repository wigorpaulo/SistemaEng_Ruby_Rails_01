class ReferenciaController < ApplicationController
  before_action :set_referencium, only: [:show, :edit, :update, :destroy]

  # GET /referencia
  # GET /referencia.json
  def index
    @referencia = Referencium.all
  end

  # GET /referencia/1
  # GET /referencia/1.json
  def show
  end

  # GET /referencia/new
  def new
    @referencium = Referencium.new
  end

  # GET /referencia/1/edit
  def edit
  end

  # POST /referencia
  # POST /referencia.json
  def create
    @referencium = Referencium.new(referencium_params)

    respond_to do |format|
      if @referencium.save
        format.html { redirect_to @referencium, notice: 'Referencium was successfully created.' }
        format.json { render :show, status: :created, location: @referencium }
      else
        format.html { render :new }
        format.json { render json: @referencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referencia/1
  # PATCH/PUT /referencia/1.json
  def update
    respond_to do |format|
      if @referencium.update(referencium_params)
        format.html { redirect_to @referencium, notice: 'Referencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @referencium }
      else
        format.html { render :edit }
        format.json { render json: @referencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referencia/1
  # DELETE /referencia/1.json
  def destroy
    @referencium.destroy
    respond_to do |format|
      format.html { redirect_to referencia_url, notice: 'Referencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referencium
      @referencium = Referencium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def referencium_params
      params.require(:referencium).permit(:ref_anomes)
    end
end
