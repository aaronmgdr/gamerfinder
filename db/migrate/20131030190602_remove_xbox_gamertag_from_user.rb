class RemoveXboxGamertagFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :xbox_gamer_tag, :string
  end
end
