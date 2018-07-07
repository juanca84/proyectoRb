class Departamento < ApplicationRecord
  has_many :agencias

  def genera_presupuesto_anual
    presupuesto_anual = 0
    agencias.each do |agencia|
      presupuesto_anual += agencia.genera_presupuesto_anual
    end
    presupuesto_anual
  end
end
