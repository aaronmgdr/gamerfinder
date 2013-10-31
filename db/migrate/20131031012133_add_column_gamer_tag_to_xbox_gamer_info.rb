class AddColumnGamerTagToXboxGamerInfo < ActiveRecord::Migration
  def change
    add_column :xbox_gamer_infos, :xboxgamertag, :string
  end
end
