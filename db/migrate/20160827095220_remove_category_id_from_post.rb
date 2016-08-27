class RemoveCategoryIdFromPost < ActiveRecord::Migration
  def change
    remove_reference :posts, :category, index: true
  end
end
