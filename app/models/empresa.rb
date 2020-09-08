class Empresa < ApplicationRecord

  def lista_obj
    return Empresa.select(:id, :razao_social).all
  end

  def consulta_nome(pid)
    return Empresa.select(:razao_social).where("#{:id} = #{pid}")[0].razao_social
  end

end
