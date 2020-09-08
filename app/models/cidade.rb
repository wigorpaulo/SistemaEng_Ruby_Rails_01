class Cidade < ApplicationRecord

  def lista_obj
    return Cidade.select(:id, :descricao).all
  end

  def consulta_nome(pid)
    return Cidade.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  end

end
