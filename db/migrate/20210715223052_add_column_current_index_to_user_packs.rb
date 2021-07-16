class AddColumnCurrentIndexToUserPacks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_packs, :current_index, :integer
  end
end
