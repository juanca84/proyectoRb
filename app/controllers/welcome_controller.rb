class WelcomeController < ApplicationController
  def index
    mensaje = { mensaje: 'Bienvenido a la aplicación Backend v1.0' }
    render json: mensaje
  end
end
