module Util

  def mensagem_informacao (pMensagem)
    puts pMensagem
  end

  # def consulta_dados (pObj, pId)
  #
  #   vObj = pObj.new
  #   vAux = vObj.consulta_nome(pId)
  #   vObj.freeze
  #
  #   return vAux
  # end

  # def lista(obj)
  #   return obj.select(:id, :descricao).all
  # end
  #
  # def consulta_nome(obj, pid)
  #   return obj.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  # end

end