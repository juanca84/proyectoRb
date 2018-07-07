class CreatePersonal < ActiveRecord::Migration[5.2]
  def change
    create_table :personal do |t|
      t.string :nombre
      t.references :agencia, foreign_key: true
      t.references :cargo, foreign_key: true

      t.timestamps
    end
  end
end
