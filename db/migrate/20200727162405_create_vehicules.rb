class CreateVehicules < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicules do |t|
      t.string :marque
      t.string :modele
      t.string :immatriculation
      t.date :annee
      t.date :date_achat
      t.integer :km_achat

      t.timestamps
    end
  end
end
