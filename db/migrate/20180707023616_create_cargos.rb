class CreateCargos < ActiveRecord::Migration[5.2]
  def change
    create_table :cargos do |t|
      t.string :nombre
      t.decimal :pago_hora
      t.decimal :horas_dia
      t.integer :numero_dias
      t.references :departamento, foreign_key: true

      t.timestamps
    end
  end
end
