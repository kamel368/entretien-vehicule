class CreatePannes < ActiveRecord::Migration[6.0]
  def change
    create_table :pannes do |t|
      t.string :type
      t.boolean :assurance
      t.string :status
      t.date :date_debut
      t.date :date_fin_estime
      t.date :date_fin
      t.text :commentaire
      t.string :nom
      t.decimal :tarif

      t.timestamps
    end
  end
end
