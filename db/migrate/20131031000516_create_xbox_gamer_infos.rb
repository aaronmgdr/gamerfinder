class CreateXboxGamerInfos < ActiveRecord::Migration
  def change
    create_table :xbox_gamer_infos do |t|
      t.string :gamertag
      t.string :xbox_live_tier
      t.text :avatar_img_url
      t.integer :reputation_score
      t.references :user

      t.timestamps
    end
  end
end
