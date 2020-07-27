class CreateVoitures < ActiveRecord::Migration[6.0]
  def change
    create_table :voitures do |t|
      t.string :name
      t.string :immatriculation

      t.timestamps
    end
  end
end
