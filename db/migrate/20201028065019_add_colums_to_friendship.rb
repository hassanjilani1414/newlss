class AddColumsToFriendship < ActiveRecord::Migration[6.0]
  def change
    add_column :friendships , :first_name, :string
    add_column :friendships , :last_name, :string
    add_column :friendships , :email, :string
  end
end
