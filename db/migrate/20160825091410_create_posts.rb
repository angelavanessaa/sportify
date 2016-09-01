class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :product, index: true
      t.references :chatbox, index: true
      t.references :vote, index: true
      t.integer :price
    

      t.timestamps null: false
    end
  end
end
