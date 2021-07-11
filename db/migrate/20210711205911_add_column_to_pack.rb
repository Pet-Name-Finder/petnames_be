class AddColumnToPack < ActiveRecord::Migration[5.2]
  def change
    add_reference :packs, :user, index: true
    add_foreign_key :packs, :users
  end
end
