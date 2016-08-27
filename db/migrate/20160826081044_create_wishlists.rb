class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :name
      t.integer :user_id
      t.integer :product_id
      t.integer :votes_count, default: 0
    end
  end
end
