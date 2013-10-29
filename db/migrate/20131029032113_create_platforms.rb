class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.references :user, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
