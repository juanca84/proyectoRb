class Agencia < ApplicationRecord
  belongs_to :departamento
  has_many :personal

  def genera_presupuesto
    presupuesto_mensual = 0
    personal.each do |persona|
      presupuesto_mensual += persona.cargo.pago_hora * persona.cargo.horas_dia * persona.cargo.numero_dias
    end
    presupuesto_mensual
  end

  def genera_presupuesto_anual
    genera_presupuesto * 12
  end
end
