class AddGamerTagToUser < ActiveRecord::Migration
  def change
    add_column :users, :xbox_gamertag, :string
  end
end
