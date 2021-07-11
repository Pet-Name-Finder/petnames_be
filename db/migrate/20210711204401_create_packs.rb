class CreatePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :packs do |t|
      t.string :animal_gender
      t.string :animal_type

      t.timestamps
    end
  end
end
