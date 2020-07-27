class DropTableVoiture < ActiveRecord::Migration[6.0]
  def change
    drop_table :voitures
  end
end
