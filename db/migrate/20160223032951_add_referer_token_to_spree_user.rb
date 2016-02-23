class AddRefererTokenToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :referer_token, :string
    add_index :spree_users, :referer_token, unique: true
  end
end
