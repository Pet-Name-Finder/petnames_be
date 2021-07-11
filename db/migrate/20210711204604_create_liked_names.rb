class CreateLikedNames < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_names do |t|
      t.references :pack, foreign_key: true
      t.references :pet_name, foreign_key: true
      t.boolean :liked

      t.timestamps
    end
  end
end
