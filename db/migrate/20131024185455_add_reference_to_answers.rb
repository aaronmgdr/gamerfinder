class AddReferenceToAnswers < ActiveRecord::Migration
  def change
    change_table :answers do |t|
      t.references :question
    end
  end
end
