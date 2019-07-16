class ChangeColumnToUser < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :name, :string, null: false
    change_column_default :users, :name, nil 
  end
end
