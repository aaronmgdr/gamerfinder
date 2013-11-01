class RemoveReferenceToResponses < ActiveRecord::Migration
  def change
    remove_reference :responses, :question, index: true
  end
end
