class CreateMissings < ActiveRecord::Migration
  def change
    create_table :missings do |t|
      t.string :name
      t.string :lastname
      t.string :gender
      t.string :contexture
      t.string :height
      t.text :lastknownposition
      t.text :lastdress
      t.text :frequentplaces
      t.string :image

      t.timestamps null: false
    end
  end
end
