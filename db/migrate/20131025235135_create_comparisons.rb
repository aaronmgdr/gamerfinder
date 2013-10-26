class CreateComparisons < ActiveRecord::Migration
  def change
    create_table :comparisons do |t|
      t.float :match_percent
      t.integer :user_id
      t.integer :compared_user_id
      t.timestamps
    end
  end
end
