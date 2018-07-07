class AgenciasController < ApplicationController
  def index
    agencias = Agencia.all
    agencia_json = []
    agencias.each do |agencia|
      agencia_json.push(
        {
          agencia: agencia.nombre,
          departamento: agencia.departamento.nombre
        })
    end
    render json: agencia_json
  end
end
