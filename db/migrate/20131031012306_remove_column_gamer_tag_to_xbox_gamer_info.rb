class RemoveColumnGamerTagToXboxGamerInfo < ActiveRecord::Migration
  def change
    remove_column :xbox_gamer_infos, :xboxgamertag, :string
  end
end
