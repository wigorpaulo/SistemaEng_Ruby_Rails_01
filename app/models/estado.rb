class Estado < ApplicationRecord

  def lista_obj
    return Estado.select(:id, :descricao).all
  end

  def consulta_nome(pid)
    return Estado.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  end

end
