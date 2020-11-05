class RemoveFirstNameLastNameFromFriendship < ActiveRecord::Migration[6.0]

  def change
    remove_column :friendships,:first_name,:string
    remove_column :friendships,:last_name,:string
  end
end
