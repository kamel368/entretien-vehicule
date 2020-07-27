class CreateReparateurs < ActiveRecord::Migration[6.0]
  def change
    create_table :reparateurs do |t|
      t.string :nom
      t.string :adresse
      t.integer :tel
      t.string :mail
      t.string :nom_contact

      t.timestamps
    end
  end
end
