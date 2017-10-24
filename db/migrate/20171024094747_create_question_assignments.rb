class CreateQuestionAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :question_assignments do |t|

      t.timestamps
    end
  end
end
