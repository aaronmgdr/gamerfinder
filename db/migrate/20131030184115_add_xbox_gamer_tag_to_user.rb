class AddXboxGamerTagToUser < ActiveRecord::Migration
  def change
    add_column :users, :xbox_gamer_tag, :string
  end
end
