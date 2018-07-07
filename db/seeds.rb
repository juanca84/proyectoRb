# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Truncando tablas'
Agencia.all.map{ |a| a.destroy }
Departamento.all.map{ |d| d.destroy }

puts '--------creando departamentos---------'
departamentos = Departamento.create([
    { nombre: 'Beni' },
    { nombre: 'Chuquisaca' },
    { nombre: 'Cochabamba' },
    { nombre: 'La Paz' },
    { nombre: 'Oruro' },
    { nombre: 'Pando' },
    { nombre: 'Potosí' },
    { nombre: 'Santa Cruz' },
    { nombre: 'Tarija' },
  ])


puts '--------creando agencias---------'
lpz = Departamento.find_by_nombre('La Paz')
cbba = Departamento.find_by_nombre('Cochabamba')
scz = Departamento.find_by_nombre('Santa Cruz')
agencias = Agencia.create([
  { nombre: 'Vino Tinto', central: false, departamento_id: lpz.id },
  { nombre: 'San Miguel', central: false, departamento_id: lpz.id },
  { nombre: 'Cementerio', central: false, departamento_id: lpz.id },
  { nombre: 'Camacho', central: true, departamento_id: lpz.id },
  { nombre: 'Cala Cala', central: false, departamento_id: cbba.id },
  { nombre: 'Casco Viejo', central: false, departamento_id: cbba.id },
  { nombre: 'Segundo Anillo', central: false, departamento_id: scz.id },
  { nombre: 'Jardin Botanico', central: false, departamento_id: scz.id },
  { nombre: 'Aeropuerto', central: false, departamento_id: scz.id }
])

puts '--------creando ---------'
