class AddPurchaseCountToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :purchase_count, :integer, default: 0
  end
end
