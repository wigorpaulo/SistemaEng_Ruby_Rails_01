class TipoEnderecosController < ApplicationController
  before_action :set_tipo_endereco, only: [:show, :edit, :update, :destroy]

  # GET /tipo_enderecos
  # GET /tipo_enderecos.json
  def index
    @tipo_enderecos = TipoEndereco.all
  end

  # GET /tipo_enderecos/1
  # GET /tipo_enderecos/1.json
  def show
  end

  # GET /tipo_enderecos/new
  def new
    @tipo_endereco = TipoEndereco.new
  end

  # GET /tipo_enderecos/1/edit
  def edit
  end

  # POST /tipo_enderecos
  # POST /tipo_enderecos.json
  def create
    @tipo_endereco = TipoEndereco.new(tipo_endereco_params)

    respond_to do |format|
      if @tipo_endereco.save
        format.html { redirect_to @tipo_endereco, notice: 'Tipo endereco was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_endereco }
      else
        format.html { render :new }
        format.json { render json: @tipo_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_enderecos/1
  # PATCH/PUT /tipo_enderecos/1.json
  def update
    respond_to do |format|
      if @tipo_endereco.update(tipo_endereco_params)
        format.html { redirect_to @tipo_endereco, notice: 'Tipo endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_endereco }
      else
        format.html { render :edit }
        format.json { render json: @tipo_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_enderecos/1
  # DELETE /tipo_enderecos/1.json
  def destroy
    @tipo_endereco.destroy
    respond_to do |format|
      format.html { redirect_to tipo_enderecos_url, notice: 'Tipo endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_endereco
      @tipo_endereco = TipoEndereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_endereco_params
      params.require(:tipo_endereco).permit(:descricao, :status)
    end
end
