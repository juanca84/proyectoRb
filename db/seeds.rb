# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Truncando tablas'
Persona.all.map{ |c| c.destroy }
Cargo.all.map{ |c| c.destroy }
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
Agencia.create([
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

puts '--------creando Cargos---------'
Cargo.create([
  { nombre: 'Gerente', pago_hora: 40, horas_dia: 8, numero_dias: 20, departamento_id: lpz.id },
  { nombre: 'Director', pago_hora: 84, horas_dia: 8, numero_dias: 20, departamento_id: lpz.id },
  { nombre: 'Administrativo', pago_hora: 28, horas_dia: 8, numero_dias: 20, departamento_id: lpz.id },
  { nombre: 'Cajero', pago_hora: 20, horas_dia: 8, numero_dias: 25, departamento_id: lpz.id },
  { nombre: 'Cajero Suplente', pago_hora: 20, horas_dia: 8, numero_dias: 25, departamento_id: lpz.id },

  { nombre: 'Gerente', pago_hora: 38, horas_dia: 8, numero_dias: 20, departamento_id: cbba.id },
  { nombre: 'Director', pago_hora: 79.8, horas_dia: 8, numero_dias: 20, departamento_id: cbba.id },
  { nombre: 'Administrativo', pago_hora: 26.6, horas_dia: 8, numero_dias: 20, departamento_id: cbba.id },
  { nombre: 'Cajero', pago_hora: 19, horas_dia: 8, numero_dias: 25, departamento_id: cbba.id },
  { nombre: 'Cajero Suplente', pago_hora: 19, horas_dia: 8, numero_dias: 25, departamento_id: cbba.id },

  { nombre: 'Gerente', pago_hora: 42, horas_dia: 8, numero_dias: 20, departamento_id: scz.id },
  { nombre: 'Director', pago_hora: 88.2, horas_dia: 8, numero_dias: 20, departamento_id: scz.id },
  { nombre: 'Administrativo', pago_hora: 29.4, horas_dia: 8, numero_dias: 20, departamento_id: scz.id },
  { nombre: 'Cajero', pago_hora: 21, horas_dia: 8, numero_dias: 25, departamento_id: scz.id },
  { nombre: 'Cajero Suplente', pago_hora: 21, horas_dia: 8, numero_dias: 25, departamento_id: scz.id }
])

puts '--------creando Personal---------'
# la paz
agencia = Agencia.find_by_nombre('Vino Tinto')
cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Cajero').first
7.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

agencia = Agencia.find_by_nombre('San Miguel')
cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Cajero').first
12.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

agencia = Agencia.find_by_nombre('Cementerio')
cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Cajero').first
12.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

agencia = Agencia.find_by_nombre('Camacho')
cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Cajero').first
22.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Director').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: lpz.id, nombre: 'Administrativo').first
5.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

# Cochabamba
agencia = Agencia.find_by_nombre('Cala Cala')
cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Cajero').first
12.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

agencia = Agencia.find_by_nombre('Casco Viejo')
cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Cajero').first
17.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

# Santa Cruz
agencia = Agencia.find_by_nombre('Segundo Anillo')
cargo = Cargo.where(departamento_id: scz.id, nombre: 'Cajero').first
17.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

agencia = Agencia.find_by_nombre('Jardin Botanico')
cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Cajero').first
12.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

agencia = Agencia.find_by_nombre('Aeropuerto')
cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Cajero').first
5.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end

cargo = Cargo.where(departamento_id: cbba.id, nombre: 'Gerente').first
1.times do
  Persona.create({ nombre: Faker::Name.name, agencia_id: agencia.id, cargo_id: cargo.id })
end
