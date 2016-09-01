class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :product_id
      t.integer :target_votes, default: 0
    end
  end
end
