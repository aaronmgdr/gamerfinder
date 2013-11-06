class AddColumnHasGtaVtoXboxGamerInfo < ActiveRecord::Migration
  def change
    add_column :xbox_gamer_infos, :hasgtav, :boolean
  end
end
