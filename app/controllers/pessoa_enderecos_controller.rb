class PessoaEnderecosController < ApplicationController
  before_action :set_pessoa_endereco, only: [:show, :edit, :update, :destroy]

  # GET /pessoa_enderecos
  # GET /pessoa_enderecos.json
  def index
    @pessoa_enderecos = PessoaEndereco.all
  end

  # GET /pessoa_enderecos/1
  # GET /pessoa_enderecos/1.json
  def show
  end

  # GET /pessoa_enderecos/new
  def new
    @pessoa_endereco = PessoaEndereco.new
  end

  # GET /pessoa_enderecos/1/edit
  def edit
  end

  # POST /pessoa_enderecos
  # POST /pessoa_enderecos.json
  def create
    @pessoa_endereco = PessoaEndereco.new(pessoa_endereco_params)

    respond_to do |format|
      if @pessoa_endereco.save
        format.html { redirect_to @pessoa_endereco, notice: 'Pessoa endereco was successfully created.' }
        format.json { render :show, status: :created, location: @pessoa_endereco }
      else
        format.html { render :new }
        format.json { render json: @pessoa_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa_enderecos/1
  # PATCH/PUT /pessoa_enderecos/1.json
  def update
    respond_to do |format|
      if @pessoa_endereco.update(pessoa_endereco_params)
        format.html { redirect_to @pessoa_endereco, notice: 'Pessoa endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoa_endereco }
      else
        format.html { render :edit }
        format.json { render json: @pessoa_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_enderecos/1
  # DELETE /pessoa_enderecos/1.json
  def destroy
    @pessoa_endereco.destroy
    respond_to do |format|
      format.html { redirect_to pessoa_enderecos_url, notice: 'Pessoa endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_endereco
      @pessoa_endereco = PessoaEndereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoa_endereco_params
      params.require(:pessoa_endereco).permit(:id_pessoa, :id_endereco, :id_tipo_endereco)
    end
end
