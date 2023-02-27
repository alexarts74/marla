class CreateHumanCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :human_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :human, null: false, foreign_key: true

      t.timestamps
    end
  end
end
