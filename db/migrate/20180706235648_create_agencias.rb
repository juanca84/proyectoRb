class CreateAgencias < ActiveRecord::Migration[5.2]
  def change
    create_table :agencias do |t|
      t.string :nombre
      t.boolean :central
      t.references :departamento, foreign_key: true
      t.timestamps
    end
  end
end
