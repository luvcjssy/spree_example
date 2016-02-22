class AddRefererIdToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :referer_id, :integer
  end
end
