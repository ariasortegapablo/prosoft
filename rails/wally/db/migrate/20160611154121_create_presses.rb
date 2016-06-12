class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :name
      t.string :phone
      t.string :main_email
      t.string :secondary_mail

      t.timestamps null: false
    end
  end
end
