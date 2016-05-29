class Drop < ActiveRecord::Migration
  def up
    drop_table :pets
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
