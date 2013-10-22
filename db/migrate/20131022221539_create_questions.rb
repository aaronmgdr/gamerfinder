class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :inquiry
      t.string :type

      t.timestamps
    end
  end
end
