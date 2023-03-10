class CreateHumans < ActiveRecord::Migration[7.0]
  def change
    create_table :humans do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :category
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
