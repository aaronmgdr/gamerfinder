class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :console

      t.timestamps
    end
  end
end
