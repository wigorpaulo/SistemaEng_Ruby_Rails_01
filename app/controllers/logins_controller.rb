class LoginsController < ApplicationController
  before_action :set_login, only: [:show]
  layout 'application_login'

  # POST /logins
  # POST /logins.json
  def create
    @login = params[:viewUser]
    @pass = params[:viewSenha]

    @usuario = Usuario.new

    if @usuario.existe_usuario(@login, @pass) then
      redirect_to '/usuarios'
    else
      redirect_to '/'
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      #@login = Login.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def login_params
      params.fetch(:login, {})
    end
end
