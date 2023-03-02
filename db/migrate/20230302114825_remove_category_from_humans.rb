class RemoveCategoryFromHumans < ActiveRecord::Migration[7.0]
  def change
    remove_column :humans, :category
  end
end
