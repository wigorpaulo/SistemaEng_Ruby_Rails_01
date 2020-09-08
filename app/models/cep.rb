class Cep < ApplicationRecord
  def lista_obj
    return Cep.select(:id, :descricao).all
  end

  def consulta_nome(pid)
    return Cep.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  end
end
