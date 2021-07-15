class AddColumnNameToPacks < ActiveRecord::Migration[5.2]
  def change
    add_column :packs, :name, :string
  end
end
