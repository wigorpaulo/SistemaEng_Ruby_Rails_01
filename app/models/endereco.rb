class Endereco < ApplicationRecord

  def lista_obj
    return Endereco.select(:id, :descricao).all
  end

  def consulta_nome(pid)
    return Endereco.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  end

end
