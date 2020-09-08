class Pai < ApplicationRecord

  include Util

  def lista_obj
    return Pai.select(:id, :descricao).all
  end

  def consulta_nome(pid)
    return Pai.select(:descricao).where("#{:id} = #{pid}")[0].descricao
  end



end
