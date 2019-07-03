class CreateSells < ActiveRecord::Migration[5.0]
  def change
    create_table :sells do |t|
      t.string :name, null: false
      t.string :image
      t.integer :price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
