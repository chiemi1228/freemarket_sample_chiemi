class Change < ActiveRecord::Migration[5.0]
  def change
    change_column_null :users, :name, true
  end
end
