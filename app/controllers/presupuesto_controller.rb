class PresupuestoController < ApplicationController
  def index
    presupuesto = {}
    if params[:a]
      agencia = Agencia.where('nombre ilike ?', params[:a]).first
      if agencia.present?
        presupuesto = {
          agencia: agencia.nombre,
          presupuesto_anual: '%.2f' % agencia.genera_presupuesto_anual + ' Bs'
        }
      end
    elsif params[:d]
      departamento = Departamento.where('nombre ilike ?', params[:d]).first
      if departamento.present?
        presupuesto = {
          departamento: departamento.nombre,
          presupuesto_anual: '%.2f' % departamento.genera_presupuesto_anual + ' Bs'
        }
      end
    else
      lpz = Departamento.where('nombre ilike ?', 'La Paz').first
      cbba = Departamento.where('nombre ilike ?', 'Cochabamba').first
      scz = Departamento.where('nombre ilike ?', 'Santa Cruz').first
      suma = lpz.genera_presupuesto_anual + cbba.genera_presupuesto_anual + scz.genera_presupuesto_anual
      presupuesto = {
        Banco: 'AGETIC',
        presupuesto_anual: '%.2f' % suma + ' Bs'
      }
    end
    render json: presupuesto
  end
end
