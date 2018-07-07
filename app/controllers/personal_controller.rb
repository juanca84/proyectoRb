class PersonalController < ApplicationController
  def index
    personal = Persona.all
    personal_json = []
    personal.each do |persona|
      personal_json.push(
        {
          nombre: persona.nombre,
          cargo: persona.cargo.nombre,
          agencia: persona.agencia.nombre,
          departamento: persona.agencia.departamento.nombre
        })
    end
    render json: personal_json
  end
end
