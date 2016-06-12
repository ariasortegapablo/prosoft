class CreatePolice < ActiveRecord::Migration
  def change
    create_table :police do |t|
      t.string :first_name
      t.string :second_name
      t.string :father_name
      t.string :mother_name
      t.float :latitude
      t.float :longitude
      t.string :current_status

      t.timestamps null: false
    end
  end
end
