class RemoveAvatarsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :avatars, :json
  end
end
