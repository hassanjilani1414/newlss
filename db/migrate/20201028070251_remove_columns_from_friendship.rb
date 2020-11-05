class RemoveColumnsFromFriendship < ActiveRecord::Migration[6.0]
  def change
    remove_column :friendships,:user_id,:integer
    remove_column :friendships,:friend_id,:integer

  end
end
