class AddCountToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :count, :integer, default: 0
  end
end
