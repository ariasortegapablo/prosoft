class CreateInformers < ActiveRecord::Migration
  def change
    create_table :informers do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :email
      t.string :docutype
      t.string :identification

      t.timestamps null: false
    end
  end
end
