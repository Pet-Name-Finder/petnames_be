class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :packs, :user_id, :owner_id
  end
end
