class Bairro < ApplicationRecord

  def lista_obj
    return Bairro.select(:id, :descricao).all
  end

  def consulta_nome(pid)
    return Bairro.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  end

end
