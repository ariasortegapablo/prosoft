class CreateDatosds < ActiveRecord::Migration
  def change
    create_table :datosds do |t|
      t.string :nombre
      t.string :apellido
      t.string :genero
      t.string :contextura
      t.string :altura
      t.text :upc
      t.text :uv
      t.text :lqf

      t.timestamps null: false
    end
  end
end
