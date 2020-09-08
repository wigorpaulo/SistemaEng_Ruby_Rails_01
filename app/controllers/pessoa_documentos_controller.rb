class PessoaDocumentosController < ApplicationController
  before_action :set_pessoa_documento, only: [:show, :edit, :update, :destroy]

  # GET /pessoa_documentos
  # GET /pessoa_documentos.json
  def index
    @pessoa_documentos = PessoaDocumento.all
  end

  # GET /pessoa_documentos/1
  # GET /pessoa_documentos/1.json
  def show
  end

  # GET /pessoa_documentos/new
  def new
    @pessoa_documento = PessoaDocumento.new
  end

  # GET /pessoa_documentos/1/edit
  def edit
  end

  # POST /pessoa_documentos
  # POST /pessoa_documentos.json
  def create
    @pessoa_documento = PessoaDocumento.new(pessoa_documento_params)

    respond_to do |format|
      if @pessoa_documento.save
        format.html { redirect_to @pessoa_documento, notice: 'Pessoa documento was successfully created.' }
        format.json { render :show, status: :created, location: @pessoa_documento }
      else
        format.html { render :new }
        format.json { render json: @pessoa_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa_documentos/1
  # PATCH/PUT /pessoa_documentos/1.json
  def update
    respond_to do |format|
      if @pessoa_documento.update(pessoa_documento_params)
        format.html { redirect_to @pessoa_documento, notice: 'Pessoa documento was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoa_documento }
      else
        format.html { render :edit }
        format.json { render json: @pessoa_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_documentos/1
  # DELETE /pessoa_documentos/1.json
  def destroy
    @pessoa_documento.destroy
    respond_to do |format|
      format.html { redirect_to pessoa_documentos_url, notice: 'Pessoa documento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_documento
      @pessoa_documento = PessoaDocumento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoa_documento_params
      params.require(:pessoa_documento).permit(:id_pessoa, :descricao)
    end
end
