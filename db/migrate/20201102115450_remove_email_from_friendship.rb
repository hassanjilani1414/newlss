class RemoveEmailFromFriendship < ActiveRecord::Migration[6.0]
  def change
    remove_column :friendships,:email,:string
  end
end
