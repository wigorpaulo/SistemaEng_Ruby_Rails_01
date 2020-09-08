class PessoaContatosController < ApplicationController
  before_action :set_pessoa_contato, only: [:show, :edit, :update, :destroy]

  # GET /pessoa_contatos
  # GET /pessoa_contatos.json
  def index
    @pessoa_contatos = PessoaContato.all
  end

  # GET /pessoa_contatos/1
  # GET /pessoa_contatos/1.json
  def show
  end

  # GET /pessoa_contatos/new
  def new
    @pessoa_contato = PessoaContato.new
  end

  # GET /pessoa_contatos/1/edit
  def edit
  end

  # POST /pessoa_contatos
  # POST /pessoa_contatos.json
  def create
    @pessoa_contato = PessoaContato.new(pessoa_contato_params)

    respond_to do |format|
      if @pessoa_contato.save
        format.html { redirect_to @pessoa_contato, notice: 'Pessoa contato was successfully created.' }
        format.json { render :show, status: :created, location: @pessoa_contato }
      else
        format.html { render :new }
        format.json { render json: @pessoa_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa_contatos/1
  # PATCH/PUT /pessoa_contatos/1.json
  def update
    respond_to do |format|
      if @pessoa_contato.update(pessoa_contato_params)
        format.html { redirect_to @pessoa_contato, notice: 'Pessoa contato was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoa_contato }
      else
        format.html { render :edit }
        format.json { render json: @pessoa_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_contatos/1
  # DELETE /pessoa_contatos/1.json
  def destroy
    @pessoa_contato.destroy
    respond_to do |format|
      format.html { redirect_to pessoa_contatos_url, notice: 'Pessoa contato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_contato
      @pessoa_contato = PessoaContato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoa_contato_params
      params.require(:pessoa_contato).permit(:id_pessoa, :telefone, :celular, :num_whats_zap, :email)
    end
end
