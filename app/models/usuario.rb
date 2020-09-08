class Usuario < ApplicationRecord

  def existe_usuario(pLogin, pSenha)

    consulta = Usuario.where("user_name = " + "'" + pLogin + "'" + " and senha = " + "'" + pSenha + "'" + " ")

    if consulta.size > 0 then
      return true
    else
      return false
    end

  end

  def existe_usuario_cadastro(pUsername)

    # consulta = Usuario.select("id").where("user_name = " + "'" + pUsername + "'")
    consulta = Usuario.select(:id).where("#{:user_name} = " + "'" + pUsername + "'")

    if consulta.size > 0 then
      return consulta
    else
      return nil
    end

  end


end
