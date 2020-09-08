class FornecedorEnderecosController < ApplicationController
  before_action :set_fornecedor_endereco, only: [:show, :edit, :update, :destroy]

  # GET /fornecedor_enderecos
  # GET /fornecedor_enderecos.json
  def index
    @fornecedor_enderecos = FornecedorEndereco.all
  end

  # GET /fornecedor_enderecos/1
  # GET /fornecedor_enderecos/1.json
  def show
  end

  # GET /fornecedor_enderecos/new
  def new
    @fornecedor_endereco = FornecedorEndereco.new
  end

  # GET /fornecedor_enderecos/1/edit
  def edit
  end

  # POST /fornecedor_enderecos
  # POST /fornecedor_enderecos.json
  def create
    @fornecedor_endereco = FornecedorEndereco.new(fornecedor_endereco_params)

    respond_to do |format|
      if @fornecedor_endereco.save
        format.html { redirect_to @fornecedor_endereco, notice: 'Fornecedor endereco was successfully created.' }
        format.json { render :show, status: :created, location: @fornecedor_endereco }
      else
        format.html { render :new }
        format.json { render json: @fornecedor_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedor_enderecos/1
  # PATCH/PUT /fornecedor_enderecos/1.json
  def update
    respond_to do |format|
      if @fornecedor_endereco.update(fornecedor_endereco_params)
        format.html { redirect_to @fornecedor_endereco, notice: 'Fornecedor endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @fornecedor_endereco }
      else
        format.html { render :edit }
        format.json { render json: @fornecedor_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedor_enderecos/1
  # DELETE /fornecedor_enderecos/1.json
  def destroy
    @fornecedor_endereco.destroy
    respond_to do |format|
      format.html { redirect_to fornecedor_enderecos_url, notice: 'Fornecedor endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor_endereco
      @fornecedor_endereco = FornecedorEndereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fornecedor_endereco_params
      params.require(:fornecedor_endereco).permit(:id_fornecedor, :id_endereco, :id_tipo_endereco)
    end
end
