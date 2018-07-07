namespace :db do
  desc "Genera resultado"
  task genera: :environment do
    puts 'Generando Resultados...'
    file = File.open("../resutado.txt", "w")
    file.write('Mi año de nacimiento: "1984"'+ "\n")
    file.write("\n")
    # Por agencia
    Agencia.all.each do |agencia|
      file.write('Presupuesto anual en salarios de la agencia "'+ agencia.nombre + '": "' + '%.2f' % agencia.genera_presupuesto_anual + '"Bs' + "\n")
    end
    file.write("\n")
    # por departamento
    lpz = Departamento.where('nombre ilike ?', 'La Paz').first
    cbba = Departamento.where('nombre ilike ?', 'Cochabamba').first
    scz = Departamento.where('nombre ilike ?', 'Santa Cruz').first
    file.write('Presupuesto anual en salarios de Cochabamba: "'+ cbba.nombre + '": "' + '%.2f' % cbba.genera_presupuesto_anual + '"Bs' + "\n")
    file.write('Presupuesto anual en salarios de Santa Cruz: "'+ scz.nombre + '": "' + '%.2f' % scz.genera_presupuesto_anual + '"Bs' + "\n")
    file.write('Presupuesto anual en salarios de La Paz: "'+ lpz.nombre + '": "' + '%.2f' % lpz.genera_presupuesto_anual + '"Bs' + "\n")
    file.write("\n")
    # Total
    total = lpz.genera_presupuesto_anual + cbba.genera_presupuesto_anual + scz.genera_presupuesto_anual
    file.write('Presupuesto anual total en salarios: ": "' + '%.2f' % total + '"Bs' + "\n")
  end
end
