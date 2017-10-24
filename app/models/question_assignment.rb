# == Schema Information
#
# Table name: question_assignments
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class QuestionAssignment < ApplicationRecord
  belongs_to :question
  belongs_to :test
end
